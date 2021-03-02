from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Position_Scan_V0_1_0 = CommandToolBuilder(tool="rsat_position_scan", base_command=["rsat", "position-scan"], inputs=[ToolInput(tag="in_position_scan", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_j_dotado_tc_dot_mondragon_atncmmdotuiodotno", input_type=String(), position=0, doc=InputDocumentation(doc="[1mCATEGORY[0m")), ToolInput(tag="in_util", input_type=String(), position=1, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_specified_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default: 1e-3")), ToolInput(tag="in_done_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-diff[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Position_Scan_V0_1_0().translate("wdl", allow_empty_container=True)

