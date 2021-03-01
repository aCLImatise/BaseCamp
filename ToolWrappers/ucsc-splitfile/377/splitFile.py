from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Splitfile_V0_1_0 = CommandToolBuilder(tool="splitFile", base_command=["splitFile"], inputs=[ToolInput(tag="in_head", input_type=File(optional=True), prefix="-head", doc=InputDocumentation(doc="- put head in front of each output")), ToolInput(tag="in_tail", input_type=File(optional=True), prefix="-tail", doc=InputDocumentation(doc="- put tail at end of each output")), ToolInput(tag="in_source", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_lines_per_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitfile_V0_1_0().translate("wdl", allow_empty_container=True)

