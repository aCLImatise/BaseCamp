from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Verify_Layout_V0_1_0 = CommandToolBuilder(tool="verify_layout", base_command=["verify-layout"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="the coordinates and bases for each read in layout\nreadid rc offset roffset len bases\n")), ToolInput(tag="in_bank_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Verify_Layout_V0_1_0().translate("wdl", allow_empty_container=True)

