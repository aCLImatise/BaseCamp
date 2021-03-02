from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Scancel_Range_Py_Start_V0_1_0 = CommandToolBuilder(tool="scancel_range.py_start", base_command=["scancel_range.py", "start"], inputs=[ToolInput(tag="in_end", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scancel_Range_Py_Start_V0_1_0().translate("wdl", allow_empty_container=True)

