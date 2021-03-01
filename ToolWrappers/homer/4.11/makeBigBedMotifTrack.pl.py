from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Makebigbedmotiftrack_Pl_V0_1_0 = CommandToolBuilder(tool="makeBigBedMotifTrack.pl", base_command=["makeBigBedMotifTrack.pl"], inputs=[ToolInput(tag="in_track_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_motif_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makebigbedmotiftrack_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

