from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bwt_Index_V0_1_0 = CommandToolBuilder(tool="bwt_index", base_command=["bwt_index"], inputs=[ToolInput(tag="in_ref_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ex_dot", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_my_ref", input_type=String(optional=True), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwt_Index_V0_1_0().translate("wdl", allow_empty_container=True)

