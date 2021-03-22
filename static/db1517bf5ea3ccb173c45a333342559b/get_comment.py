from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Get_Comment_V0_1_0 = CommandToolBuilder(tool="get_comment", base_command=["get_comment"], inputs=[ToolInput(tag="in_suppresses_display_fieldid", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Suppresses display of field-ID")), ToolInput(tag="in_field", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Comment_V0_1_0().translate("wdl")

