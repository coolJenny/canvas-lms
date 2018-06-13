#
# Copyright (C) 2017 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

class AddUnpostedCurrentAndFinalScoreToScores < ActiveRecord::Migration[5.0]
  tag :predeploy

  def self.up
    add_column :scores, :unposted_current_score, :float
    add_column :scores, :unposted_final_score, :float
  end

  def self.down
    remove_column :scores, :unposted_current_score
    remove_column :scores, :unposted_final_score
  end
end
