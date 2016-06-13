# this file is part from Uruk Bugs Repairer
#    Uruk Bugs Repairer is free software: you can redistribute it and/or modify
#    it under the terms of the GNU  General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#    Uruk Bugs Repairer is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
 #    You should have received a copy of the GNU General Public License
from gi.repository import Gtk
Gtk.init(None)
q=Gtk.MessageDialog(None, Gtk.DialogFlags.MODAL, Gtk.MessageType.INFO, Gtk.ButtonsType.OK, "noInternet  Connection")
q.format_secondary_text("your ISB might be experiencing technical difficulties, or you may need to adjust your Internet settings.")
q.run()
