class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    
    if user.role? :member
      can :manage, Wiki, :user_id => user.id
      can :manage, Page, :user_id => user.id
    end

  end
end
