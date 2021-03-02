from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


System_Data_Sqlite_Dll_V0_1_0 = CommandToolBuilder(tool="System.Data.SQLite.dll", base_command=["System.Data.SQLite.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    System_Data_Sqlite_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

