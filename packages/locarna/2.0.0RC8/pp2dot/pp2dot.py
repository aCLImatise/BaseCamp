from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Pp2Dot_V0_1_0 = CommandToolBuilder(tool="pp2dot", base_command=["pp2dot"], inputs=[ToolInput(tag="in_colors", input_type=Int(optional=True), prefix="--colors", doc=InputDocumentation(doc="Color palette. Use --colors2 to define a second palette for the\nlower-left triangle. Default: 'black','cyan','green','yellow','red'")), ToolInput(tag="in_colors_two", input_type=Int(optional=True), prefix="--colors2", doc=InputDocumentation(doc="Color palette for lower left triangle.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Full documentation\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pp2Dot_V0_1_0().translate("wdl", allow_empty_container=True)

