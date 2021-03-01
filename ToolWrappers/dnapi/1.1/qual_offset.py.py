from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Qual_Offset_Py_V0_1_0 = CommandToolBuilder(tool="qual_offset.py", base_command=["qual_offset.py"], inputs=[ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="including stdin or compressed file {zip,gz,tar,bz}"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qual_Offset_Py_V0_1_0().translate("wdl", allow_empty_container=True)

