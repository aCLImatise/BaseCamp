from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Prophecy_V0_1_0 = CommandToolBuilder(tool="_prophecy", base_command=["_prophecy"], inputs=[ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="-type", doc=InputDocumentation(doc="menu       [F] Select type (Values: F (Frequency); G\n(Gribskov); H (Henikoff))")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="-name", doc=InputDocumentation(doc="string     [mymatrix] Enter a name for the profile (Any\nstring)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Prophecy_V0_1_0().translate("wdl", allow_empty_container=True)

