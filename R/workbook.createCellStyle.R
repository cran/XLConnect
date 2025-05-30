#############################################################################
#
# XLConnect
# Copyright (C) 2010-2025 Mirai Solutions GmbH
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#############################################################################

#############################################################################
#
# Creating named and anonymous cell styles
# 
# Author: Martin Studer, Mirai Solutions GmbH
#
#############################################################################

setGeneric("createCellStyle",
		function(object, name) standardGeneric("createCellStyle"))

setMethod("createCellStyle", 
		signature(object = "workbook", name = "character"), 
		function(object, name) {
			jobj <- xlcCall(object, "createCellStyle", name, .recycle = FALSE)
			new("cellstyle", jobj = jobj)
		}
)

setMethod("createCellStyle", 
		signature(object = "workbook", name = "missing"), 
		function(object, name) {
			jobj <- xlcCall(object, "createCellStyle", .recycle = FALSE)
			new("cellstyle", jobj = jobj)
		}
)
