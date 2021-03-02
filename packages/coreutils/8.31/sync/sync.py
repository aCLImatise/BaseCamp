from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Sync_V0_1_0 = CommandToolBuilder(tool="sync", base_command=["sync"], inputs=[ToolInput(tag="in_data", input_type=Boolean(optional=True), prefix="--data", doc=InputDocumentation(doc="sync only file data, no unneeded metadata")), ToolInput(tag="in_file_system", input_type=Boolean(optional=True), prefix="--file-system", doc=InputDocumentation(doc="sync the file systems that contain the files")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sync_V0_1_0().translate("wdl", allow_empty_container=True)

