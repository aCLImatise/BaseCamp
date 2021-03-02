from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Biosed_V0_1_0 = CommandToolBuilder(tool="_biosed", base_command=["_biosed"], inputs=[ToolInput(tag="in_target_region", input_type=Boolean(optional=True), prefix="-targetregion", doc=InputDocumentation(doc="string     [N] Sequence section to match (Any string)")), ToolInput(tag="in_position", input_type=Boolean(optional=True), prefix="-position", doc=InputDocumentation(doc="integer    [0] Sequence position to match (Integer 0 or\nmore)")), ToolInput(tag="in_delete", input_type=Boolean(optional=True), prefix="-delete", doc=InputDocumentation(doc="toggle     [N] Delete the target sequence sections"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Biosed_V0_1_0().translate("wdl", allow_empty_container=True)

