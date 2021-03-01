from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Baf2Sql_C_Dll_V0_1_0 = CommandToolBuilder(tool="baf2sql_c.dll", base_command=["baf2sql_c.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Baf2Sql_C_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

