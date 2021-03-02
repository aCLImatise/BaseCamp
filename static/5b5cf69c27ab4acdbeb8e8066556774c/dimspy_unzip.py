from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Dimspy_Unzip_V0_1_0 = CommandToolBuilder(tool="dimspy_unzip", base_command=["dimspy", "unzip"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="file[.zip]")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Directory to write to.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Unzip_V0_1_0().translate("wdl", allow_empty_container=True)

