from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Necat_V0_1_0 = CommandToolBuilder(tool="necat", base_command=["necat"], inputs=[ToolInput(tag="in_correct_vertical_line_assemble_vertical_line_bridge_vertical_line_config", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cfg_fname", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/necat:0.0.1_update20200803--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Necat_V0_1_0().translate("wdl")

