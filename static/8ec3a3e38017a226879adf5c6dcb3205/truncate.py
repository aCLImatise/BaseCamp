from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Truncate_V0_1_0 = CommandToolBuilder(tool="truncate", base_command=["truncate"], inputs=[ToolInput(tag="in_no_create", input_type=Boolean(optional=True), prefix="--no-create", doc=InputDocumentation(doc="do not create any files")), ToolInput(tag="in_io_blocks", input_type=Boolean(optional=True), prefix="--io-blocks", doc=InputDocumentation(doc="treat SIZE as number of IO blocks instead of bytes")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="base size on RFILE")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="set or adjust the file size by SIZE bytes")), ToolInput(tag="in_option_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_dot_dot", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Truncate_V0_1_0().translate("wdl", allow_empty_container=True)

