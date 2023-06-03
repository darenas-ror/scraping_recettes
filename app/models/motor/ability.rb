# frozen_string_literal: true

module Motor
  class Ability
    include CanCan::Ability

    def initialize(user)
      if user&.admin?
        can :manage, :all
        motor_abilities
      end
      #
      # The first argument to `can` is the action you are giving the user
      # permission to do.
      # If you pass :manage it will apply to every action. Other common actions
      # here are :read, :create, :update and :destroy.
      #
      # The second argument is the resource the user can perform the action on.
      # If you pass :all it will apply to every resource. Otherwise pass a Ruby
      # class of the resource.
      #
      # The third argument is an optional hash of conditions to further filter the
      # objects.
      # For example, here the user can only update published articles.
      #
      #   can :update, Article, published: true
      #
      # See the wiki for details:
      # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
    end

    def motor_abilities
      can :read, Motor::Tag
      can :read, ActiveStorage::Attachment
      can :read, Motor::Form, %i[name tags], tags: { name: %w[Orders Customers] }
      can :manage, Motor::Form, tags: { name: %w[Orders Customers] }
      can :manage, Motor::Query
      can :read, Motor::Dashboard, tags: { name: 'Customers' }
      can :read, Motor::Alert, tags: { name: 'Customers' }
    end
  end
end
