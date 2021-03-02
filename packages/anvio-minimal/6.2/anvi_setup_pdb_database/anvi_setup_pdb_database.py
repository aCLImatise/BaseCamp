from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Anvi_Setup_Pdb_Database_V0_1_0 = CommandToolBuilder(tool="anvi_setup_pdb_database", base_command=["anvi-setup-pdb-database"], inputs=[ToolInput(tag="in_pdb_database_path", input_type=File(optional=True), prefix="--pdb-database-path", doc=InputDocumentation(doc="The path for the PDB database to be stored. If you\nleave it as is without specifying anything, anvi'o\nwill set up everything in a pre-defined default\ndirectory. The advantage of using the default\ndirectory at the time of set up is that every user of\nanvi'o on a computer system will be using a single\ndata directory, but then you may need to run the setup\nprogram with superuser privileges. If you don't have\nsuperuser privileges, then you can use this parameter\nto tell anvi'o the location you wish to use to setup\nyour database.")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="Maximum number of threads to use for multithreading\nwhenever possible. Very conservatively, the default is\n1. It is a good idea to not exceed the number of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if you are running your commands on a SGE\n--if you are clusterizing your runs, and asking for\nmultiple threads to use, you may deplete your\nresources very fast.")), ToolInput(tag="in_update", input_type=Boolean(optional=True), prefix="--update", doc=InputDocumentation(doc="Use this flag if you would like to update your current")), ToolInput(tag="in_reset", input_type=Boolean(optional=True), prefix="--reset", doc=InputDocumentation(doc="Remove all the previously stored files and start over.\nIf something is feels wrong for some reason and if you\nbelieve re-downloading files and setting them up could\naddress the issue, this is the flag that will tell\nanvi'o to act like a real computer scientist\nchallenged with a computational problem.\n")), ToolInput(tag="in_database_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--skip-modeller-update"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Setup_Pdb_Database_V0_1_0().translate("wdl", allow_empty_container=True)

