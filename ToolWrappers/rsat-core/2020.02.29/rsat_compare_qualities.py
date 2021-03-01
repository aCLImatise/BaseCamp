from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Compare_Qualities_V0_1_0 = CommandToolBuilder(tool="rsat_compare_qualities", base_command=["rsat", "compare-qualities"], inputs=[ToolInput(tag="in_compare_qualities", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_comparison_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1mAUTHORS[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="PSSM")), ToolInput(tag="in_evaluation", input_type=String(), position=1, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_all", input_type=String(), position=0, doc=InputDocumentation(doc="[1mOPTIONS[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Compare_Qualities_V0_1_0().translate("wdl", allow_empty_container=True)

