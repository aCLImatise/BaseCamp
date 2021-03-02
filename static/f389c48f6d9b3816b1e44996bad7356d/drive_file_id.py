from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Drive_File_Id_V0_1_0 = CommandToolBuilder(tool="drive_file_id", base_command=["drive", "file-id"], inputs=[ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="-depth", doc=InputDocumentation(doc="maximum recursion depth (default 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_File_Id_V0_1_0().translate("wdl", allow_empty_container=True)

