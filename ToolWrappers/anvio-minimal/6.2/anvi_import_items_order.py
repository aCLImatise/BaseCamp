from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Anvi_Import_Items_Order_V0_1_0 = CommandToolBuilder(tool="anvi_import_items_order", base_command=["anvi-import-items-order"], inputs=[ToolInput(tag="in_input_order", input_type=File(optional=True), prefix="--input-order", doc=InputDocumentation(doc="One of the two important things you must provide: the\nfile that contains the items order. The format of this\nfile is important. It can either contain a proper\nnewick tree in it, or a complete list of 'items' in\nthe target database where every line of the file is\nsimply an item name. If you are providing a newick\ntree, the entire file should be a single line. I know\nit sounds hard, but you seriously can do this.")), ToolInput(tag="in_path__dbpath", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="PATH, --db-path DB PATH\nAn appropriate anvi'o database to import the items\norder. Currently it can be a profile, pan, or genes\ndatabase. But you should try your chances with other\nkinds of databases for fun and games. Basically, if\nthe database contains an items order table, then\nthings will work. Otherwise, you will probably get\nangry errors back in the worst case scenario.")), ToolInput(tag="in_name_what_we", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="NAME     What should we call this order? Give it a concise,\nsingle-word name.")), ToolInput(tag="in_make_default", input_type=Boolean(optional=True), prefix="--make-default", doc=InputDocumentation(doc="You have the option to make this order the default\norder in the database. Which means, anvi'o will use\nthis one when someone runs the program anvi-\ninteractive and presses draw. Big responsibility. But\nif you have a 'default' state, it will not work\nbecause the default items order in the state file\noverwrites the one that comes from the database. So\nnot that big of a responsibility.\n")), ToolInput(tag="in_path", input_type=File(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Import_Items_Order_V0_1_0().translate("wdl", allow_empty_container=True)

