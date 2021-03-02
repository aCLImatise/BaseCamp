from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Teloclip_Extract_Samfile_V0_1_0 = CommandToolBuilder(tool="teloclip_extract_samfile", base_command=["teloclip-extract", "samfile"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_idx", input_type=String(optional=True), prefix="--refIdx", doc=InputDocumentation(doc="")), ToolInput(tag="in_telo_clip_extract", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Teloclip_Extract_Samfile_V0_1_0().translate("wdl", allow_empty_container=True)

