# -*- coding: utf-8 -*-
#
# Copyright 2011 Red Hat, Inc.
#
# This software is licensed to you under the GNU General Public
# License as published by the Free Software Foundation; either version
# 2 of the License (GPLv2) or (at your option) any later version.
# There is NO WARRANTY for this software, express or implied,
# including the implied warranties of MERCHANTABILITY,
# NON-INFRINGEMENT, or FITNESS FOR A PARTICULAR PURPOSE. You should
# have received a copy of GPLv2 along with this software; if not, see
# http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.


module Foreman
  class DomainsController < SimpleCRUDController

    resource_model ::Foreman::Domain

    list_column :name, :label=>_("Name")
    sort_by :name

    helper :foreman

    def rules
      {
        :index => lambda{true},
        :items => lambda{true},
        :new => lambda{true},
        :create => lambda{true},
        :edit => lambda{true},
        :update => lambda{true},
        :destroy => lambda{true}
      }
    end

    def panel_options
      {
        :title => _('Domains'),
        :create => _("Domain"),
        :create_label => _('+ New Domain'),
        :ajax_scroll => items_domains_path,
      }
    end

  end
end
