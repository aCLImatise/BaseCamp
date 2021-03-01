from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Simulate_Py_V0_1_0 = CommandToolBuilder(tool="simulate.py", base_command=["simulate.py"], inputs=[ToolInput(tag="in_dele", input_type=String(optional=True), prefix="--dele", doc=InputDocumentation(doc="")), ToolInput(tag="in_ins", input_type=String(optional=True), prefix="--ins", doc=InputDocumentation(doc="")), ToolInput(tag="in_copy", input_type=String(optional=True), prefix="--copy", doc=InputDocumentation(doc="")), ToolInput(tag="in_simple", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_error", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_simulation", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simulate_Py_V0_1_0().translate("wdl", allow_empty_container=True)

