from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lzop_Build_Offset_Table_Py_V0_1_0 = CommandToolBuilder(tool="lzop_build_offset_table.py", base_command=["lzop_build_offset_table.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lzop_Build_Offset_Table_Py_V0_1_0().translate("wdl", allow_empty_container=True)

