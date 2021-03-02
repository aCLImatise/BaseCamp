from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Halrandgen_V0_1_0 = CommandToolBuilder(tool="halRandGen", base_command=["halRandGen"], inputs=[ToolInput(tag="in_preset", input_type=Boolean(optional=True), prefix="--preset", doc=InputDocumentation(doc="<small, medium, big, large> [medum]")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="[system time]")), ToolInput(tag="in_hal_stats", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path_of_ouput_hal_alignment_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Halrandgen_V0_1_0().translate("wdl", allow_empty_container=True)

