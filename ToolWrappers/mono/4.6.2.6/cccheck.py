from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cccheck_V0_1_0 = CommandToolBuilder(tool="cccheck", base_command=["cccheck"], inputs=[ToolInput(tag="in_assembly", input_type=String(optional=True), prefix="--assembly", doc=InputDocumentation(doc="Assembly to check.")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Method name (if you want to check only it).")), ToolInput(tag="in_debug", input_type=String(optional=True), prefix="--debug", doc=InputDocumentation(doc="Show debug information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cccheck_V0_1_0().translate("wdl", allow_empty_container=True)

