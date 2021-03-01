from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Anvi_Setup_Interacdome_V0_1_0 = CommandToolBuilder(tool="anvi_setup_interacdome", base_command=["anvi-setup-interacdome"], inputs=[ToolInput(tag="in_interac_dome_data_dir", input_type=File(optional=True), prefix="--interacdome-data-dir", doc=InputDocumentation(doc="The path for the interacdome data to be stored. If you\nleave it as is without specifying anything, anvi'o\nwill set up everything in a pre-defined default\ndirectory. The advantage of using the default\ndirectory at the time of set up is that every user of\nanvi'o on a computer system will be using a single\ndata directory, but then you may need to run the setup\nprogram with superuser privileges. If you don't have\nsuperuser privileges, then you can use this parameter\nto tell anvi'o the location you wish to use to setup\nyour data. (default: None)")), ToolInput(tag="in_reset", input_type=Boolean(optional=True), prefix="--reset", doc=InputDocumentation(doc="Remove all the previously stored files and start over.\nIf something is feels wrong for some reason and if you\nbelieve re-downloading files and setting them up could\naddress the issue, this is the flag that will tell\nanvi'o to act like a real computer scientist\nchallenged with a computational problem. (default:\nFalse)"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Setup_Interacdome_V0_1_0().translate("wdl")

