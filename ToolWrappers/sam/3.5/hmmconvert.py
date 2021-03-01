from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Hmmconvert_V0_1_0 = CommandToolBuilder(tool="hmmconvert", base_command=["hmmconvert"], inputs=[ToolInput(tag="in_model_file", input_type=File(optional=True), prefix="-model_file", doc=InputDocumentation(doc="model file")), ToolInput(tag="in_binary_output", input_type=Int(optional=True), prefix="-binary_output", doc=InputDocumentation(doc="target format ASCII/BINARY")), ToolInput(tag="in_option", input_type=String(optional=True), prefix="-option", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_name", input_type=String(), position=0, doc=InputDocumentation(doc="required"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmconvert_V0_1_0().translate("wdl", allow_empty_container=True)

