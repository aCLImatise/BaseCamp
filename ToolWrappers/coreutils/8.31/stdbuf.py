from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Stdbuf_V0_1_0 = CommandToolBuilder(tool="stdbuf", base_command=["stdbuf"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="adjust standard input stream buffering")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="adjust standard output stream buffering")), ToolInput(tag="in_error", input_type=String(optional=True), prefix="--error", doc=InputDocumentation(doc="adjust standard error stream buffering")), ToolInput(tag="in_option_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stdbuf_V0_1_0().translate("wdl", allow_empty_container=True)

