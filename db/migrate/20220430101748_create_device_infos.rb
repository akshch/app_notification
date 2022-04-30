class CreateDeviceInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :device_infos do |t|
      t.string :token
      t.string :platform
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
