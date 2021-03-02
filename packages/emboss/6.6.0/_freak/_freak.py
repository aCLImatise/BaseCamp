from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Freak_V0_1_0 = CommandToolBuilder(tool="_freak", base_command=["_freak"], inputs=[ToolInput(tag="in_letters", input_type=Boolean(optional=True), prefix="-letters", doc=InputDocumentation(doc="string     [gc] Residue letters (Any string)")), ToolInput(tag="in_step", input_type=Boolean(optional=True), prefix="-step", doc=InputDocumentation(doc="integer    [1] Stepping value (Any integer value)")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [30] Averaging window (Any integer value)")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="-plot", doc=InputDocumentation(doc="toggle     [N] Produce graphic"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Freak_V0_1_0().translate("wdl", allow_empty_container=True)

