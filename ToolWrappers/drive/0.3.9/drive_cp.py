from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Drive_Cp_V0_1_0 = CommandToolBuilder(tool="drive_cp", base_command=["drive", "cp"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="-recursive", doc=InputDocumentation(doc="recursive copying\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Cp_V0_1_0().translate("wdl", allow_empty_container=True)

