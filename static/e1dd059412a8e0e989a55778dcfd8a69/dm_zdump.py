from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dm_Zdump_V0_1_0 = CommandToolBuilder(tool="dm_zdump", base_command=["dm_zdump"], inputs=[ToolInput(tag="in_ve_bose", input_type=Boolean(optional=True), prefix="--vebose", doc=InputDocumentation(doc=": Prints a full description of each")), ToolInput(tag="in_timezone_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-c/--cutoff YEAR : Cut off verbose output near the"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dm_Zdump_V0_1_0().translate("wdl", allow_empty_container=True)

