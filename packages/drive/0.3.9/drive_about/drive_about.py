from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Drive_About_V0_1_0 = CommandToolBuilder(tool="drive_about", base_command=["drive", "about"], inputs=[ToolInput(tag="in_features", input_type=Boolean(optional=True), prefix="-features", doc=InputDocumentation(doc="gives information on features present on this drive")), ToolInput(tag="in_filesize", input_type=Boolean(optional=True), prefix="-filesize", doc=InputDocumentation(doc="prints out information about file sizes e.g the max upload size for a specific file size")), ToolInput(tag="in_quota", input_type=Boolean(optional=True), prefix="-quota", doc=InputDocumentation(doc="prints out quota information for this drive\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_About_V0_1_0().translate("wdl", allow_empty_container=True)

