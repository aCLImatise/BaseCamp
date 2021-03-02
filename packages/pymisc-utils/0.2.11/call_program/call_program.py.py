from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Call_Program_Py_V0_1_0 = CommandToolBuilder(tool="call_program.py", base_command=["call_program.py"], inputs=[ToolInput(tag="in_cmd", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Call_Program_Py_V0_1_0().translate("wdl", allow_empty_container=True)

