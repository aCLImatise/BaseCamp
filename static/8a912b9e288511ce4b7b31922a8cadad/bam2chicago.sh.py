from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Bam2Chicago_Sh_V0_1_0 = CommandToolBuilder(tool="bam2chicago.sh", base_command=["bam2chicago.sh"], inputs=[ToolInput(tag="in_bam_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bait_map_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_digest_r_map_file", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_name", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_no_delete", input_type=String(optional=True), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Chicago_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

