from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Xtermcolor_V0_1_0 = CommandToolBuilder(tool="xtermcolor", base_command=["xtermcolor"], inputs=[ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Color to convert")), ToolInput(tag="in_compat", input_type=String(optional=True), prefix="--compat", doc=InputDocumentation(doc="Compatibility mode. Defaults to xterm.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xtermcolor_V0_1_0().translate("wdl", allow_empty_container=True)

