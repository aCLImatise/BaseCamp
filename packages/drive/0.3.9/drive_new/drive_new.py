from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Drive_New_V0_1_0 = CommandToolBuilder(tool="drive_new", base_command=["drive", "new"], inputs=[ToolInput(tag="in_folder", input_type=Boolean(optional=True), prefix="-folder", doc=InputDocumentation(doc="create a folder if set otherwise create a regular file")), ToolInput(tag="in_mime_key", input_type=File(optional=True), prefix="-mime-key", doc=InputDocumentation(doc="coerce the file to this mimeType\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_New_V0_1_0().translate("wdl", allow_empty_container=True)

