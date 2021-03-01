from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Filter_Stage_1_Prl_V0_1_0 = CommandToolBuilder(tool="filter_stage_1.prl", base_command=["filter-stage-1.prl"], inputs=[ToolInput(tag="in_output_dot", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_executable_dot", input_type=String(), position=0, doc=InputDocumentation(doc="DESCRIPTION"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Stage_1_Prl_V0_1_0().translate("wdl", allow_empty_container=True)

