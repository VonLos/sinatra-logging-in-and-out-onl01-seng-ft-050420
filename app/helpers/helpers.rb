class Helpers
    def self.current_user(sessions)
        @user = User.find(sessions[:user_id])
        @user
        
    end


    def self.is_logged_in?(sessions)
      @user = User.find(sessions[:user_id]) 
      @user.id == sessions[:user_id]
    
    end
end