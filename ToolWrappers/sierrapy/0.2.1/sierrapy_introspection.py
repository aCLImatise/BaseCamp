from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Sierrapy_Introspection_V0_1_0 = CommandToolBuilder(tool="sierrapy_introspection", base_command=["sierrapy", "introspection"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="File path to store the JSON result.")), ToolInput(tag="in_ugly", input_type=Boolean(optional=True), prefix="--ugly", doc=InputDocumentation(doc="Output compressed JSON result."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sierrapy_Introspection_V0_1_0().translate("wdl", allow_empty_container=True)

