from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Basenji_Cmp_Py_Cmd_Dir1_V0_1_0 = CommandToolBuilder(tool="basenji_cmp.py_cmd_dir1", base_command=["basenji_cmp.py", "cmd_dir1"], inputs=[ToolInput(tag="in_basenji_cmp_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Cmp_Py_Cmd_Dir1_V0_1_0().translate("wdl")

