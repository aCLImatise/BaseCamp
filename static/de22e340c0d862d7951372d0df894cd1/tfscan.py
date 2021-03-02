from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tfscan_V0_1_0 = CommandToolBuilder(tool="tfscan", base_command=["tfscan"], inputs=[ToolInput(tag="in_menu", input_type=Boolean(optional=True), prefix="-menu", doc=InputDocumentation(doc="menu       [V] Select class (Values: F (fungi); I\n(insect); P (plant); V (vertebrate); O\n(other); C (Custom))")), ToolInput(tag="in_mismatch", input_type=Boolean(optional=True), prefix="-mismatch", doc=InputDocumentation(doc="integer    [0] Number of mismatches (Integer 0 or more)")), ToolInput(tag="in_minlength", input_type=Boolean(optional=True), prefix="-minlength", doc=InputDocumentation(doc="integer    [1] Display matches equal to or above this\nlength (Integer 1 or more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tfscan_V0_1_0().translate("wdl", allow_empty_container=True)

