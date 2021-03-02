from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Readinfo2Cam_V0_1_0 = CommandToolBuilder(tool="readinfo2cam", base_command=["readinfo2cam"], inputs=[ToolInput(tag="in_contig_info_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_repeat_coord_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readinfo2Cam_V0_1_0().translate("wdl", allow_empty_container=True)

