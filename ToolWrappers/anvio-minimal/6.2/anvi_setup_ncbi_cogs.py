from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Anvi_Setup_Ncbi_Cogs_V0_1_0 = CommandToolBuilder(tool="anvi_setup_ncbi_cogs", base_command=["anvi-setup-ncbi-cogs"], inputs=[ToolInput(tag="in_cog_data_dir", input_type=File(optional=True), prefix="--cog-data-dir", doc=InputDocumentation(doc="The directory for COG data to be stored. If you leave\nit as is without specifying anything, the default\ndestination for the data directory will be used to set\nthings up. The advantage of it is that everyone will\nbe using a single data directory, but then you may\nneed superuser privileges to do it. Using this\nparameter you can choose the location of the data\ndirectory somewhere you like. However, when it is time\nto run COGs, you will need to remember that path and\nprovide it to the program.")), ToolInput(tag="in_reset", input_type=Boolean(optional=True), prefix="--reset", doc=InputDocumentation(doc="Remove all the previously stored files and start over.\nIf something is feels wrong for some reason and if you\nbelieve re-downloading files and setting them up could\naddress the issue, this is the flag that will tell\nanvi'o to act like a real computer scientist\nchallenged with a computational problem.")), ToolInput(tag="in_just_do_it", input_type=Boolean(optional=True), prefix="--just-do-it", doc=InputDocumentation(doc="Don't bother me with questions or warnings, just do")), ToolInput(tag="in_if", input_type=String(optional=True), prefix="--if", doc=InputDocumentation(doc="are clusterizing your runs, and asking for")), ToolInput(tag="in_it_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-T NUM_THREADS, --num-threads NUM_THREADS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Setup_Ncbi_Cogs_V0_1_0().translate("wdl", allow_empty_container=True)

