from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Drive_Open_V0_1_0 = CommandToolBuilder(tool="drive_open", base_command=["drive", "open"], inputs=[ToolInput(tag="in_file_browser", input_type=Boolean(optional=True), prefix="-file-browser", doc=InputDocumentation(doc="open file with the local file manager (default true)")), ToolInput(tag="in_web_browser", input_type=Boolean(optional=True), prefix="-web-browser", doc=InputDocumentation(doc="open file in default browser (default true)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Open_V0_1_0().translate("wdl", allow_empty_container=True)

