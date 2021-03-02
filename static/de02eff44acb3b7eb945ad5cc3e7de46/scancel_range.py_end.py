from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Scancel_Range_Py_End_V0_1_0 = CommandToolBuilder(tool="scancel_range.py_end", base_command=["scancel_range.py", "end"], inputs=[ToolInput(tag="in_s_cancel_range_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scancel_Range_Py_End_V0_1_0().translate("wdl", allow_empty_container=True)

