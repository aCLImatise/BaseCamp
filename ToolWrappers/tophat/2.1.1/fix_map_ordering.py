from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Fix_Map_Ordering_V0_1_0 = CommandToolBuilder(tool="fix_map_ordering", base_command=["fix_map_ordering"], inputs=[ToolInput(tag="in_sam_header", input_type=File(optional=True), prefix="--sam-header", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_sam_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_bam_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_unmapped_bam", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fix_Map_Ordering_V0_1_0().translate("wdl", allow_empty_container=True)

