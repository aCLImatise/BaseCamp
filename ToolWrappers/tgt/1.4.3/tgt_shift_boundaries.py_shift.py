from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tgt_Shift_Boundaries_Py_Shift_V0_1_0 = CommandToolBuilder(tool="tgt_shift_boundaries.py_shift", base_command=["tgt-shift-boundaries.py", "shift"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_tgt_shift_boundaries_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tgt_Shift_Boundaries_Py_Shift_V0_1_0().translate("wdl", allow_empty_container=True)

