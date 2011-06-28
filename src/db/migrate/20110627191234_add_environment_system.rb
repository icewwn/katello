class AddEnvironmentSystem < ActiveRecord::Migration
  def self.up
    change_table :systems do |t|
      t.references :kp_environment
    end
  end

  def self.down
    change_table :systems do |t|
      t.remove :kp_environment_id
    end
  end
end
