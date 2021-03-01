from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Pepcoil_V0_1_0 = CommandToolBuilder(tool="_pepcoil", base_command=["_pepcoil"], inputs=[ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [28] Window size (Integer from 7 to 28)")), ToolInput(tag="in_frame", input_type=Boolean(optional=True), prefix="-frame", doc=InputDocumentation(doc="boolean    [Yes if -coil is true] Show coil frameshifts")), ToolInput(tag="in_other", input_type=Boolean(optional=True), prefix="-other", doc=InputDocumentation(doc="boolean    [N] Report non coiled coil regions"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pepcoil_V0_1_0().translate("wdl", allow_empty_container=True)

