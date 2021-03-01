from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fu_Extract_V0_1_0 = CommandToolBuilder(tool="fu_extract", base_command=["fu-extract"], inputs=[ToolInput(tag="in_pattern", input_type=Boolean(optional=True), prefix="--pattern", doc=InputDocumentation(doc="STRING")), ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="--minlen", doc=InputDocumentation(doc="INT")), ToolInput(tag="in_maxlen", input_type=Boolean(optional=True), prefix="--maxlen", doc=InputDocumentation(doc="INT")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="FILE")), ToolInput(tag="in_column", input_type=Boolean(optional=True), prefix="--column", doc=InputDocumentation(doc="INT (default: 1)")), ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_note", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_example", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_that", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fu_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

