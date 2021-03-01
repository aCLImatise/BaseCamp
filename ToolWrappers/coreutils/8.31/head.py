from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Head_V0_1_0 = CommandToolBuilder(tool="head", base_command=["head"], inputs=[ToolInput(tag="in_bytes", input_type=Boolean(optional=True), prefix="--bytes", doc=InputDocumentation(doc="=[-]NUM       print the first NUM bytes of each file;\nwith the leading '-', print all but the last\nNUM bytes of each file")), ToolInput(tag="in_lines", input_type=Boolean(optional=True), prefix="--lines", doc=InputDocumentation(doc="=[-]NUM       print the first NUM lines instead of the first 10;\nwith the leading '-', print all but the last\nNUM lines of each file")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="never print headers giving file names")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="always print headers giving file names")), ToolInput(tag="in_zero_terminated", input_type=Boolean(optional=True), prefix="--zero-terminated", doc=InputDocumentation(doc="line delimiter is NUL, not newline"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Head_V0_1_0().translate("wdl", allow_empty_container=True)

