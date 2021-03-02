from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bp_Remote_Blast_Pl_V0_1_0 = CommandToolBuilder(tool="bp_remote_blast.pl", base_command=["bp_remote_blast.pl"], inputs=[ToolInput(tag="in_bioperl_lat_bioperl_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="- General discussion"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Remote_Blast_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

