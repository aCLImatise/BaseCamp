from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mono_Gdb_Py_V0_1_0 = CommandToolBuilder(tool="mono_gdb.py", base_command=["mono-gdb.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mono_Gdb_Py_V0_1_0().translate("wdl", allow_empty_container=True)

