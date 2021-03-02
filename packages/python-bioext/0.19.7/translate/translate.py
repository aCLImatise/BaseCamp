from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Translate_V0_1_0 = CommandToolBuilder(tool="translate", base_command=["translate"], inputs=[ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Translate_V0_1_0().translate("wdl", allow_empty_container=True)

