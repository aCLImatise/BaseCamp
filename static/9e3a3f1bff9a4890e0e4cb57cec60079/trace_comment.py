from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Trace_Comment_V0_1_0 = CommandToolBuilder(tool="trace_comment", base_command=["trace_comment"], inputs=[ToolInput(tag="in_suppresses_display_fieldid", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Suppresses display of field-ID")), ToolInput(tag="in_get_comment", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_field", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trace_Comment_V0_1_0().translate("wdl", allow_empty_container=True)

