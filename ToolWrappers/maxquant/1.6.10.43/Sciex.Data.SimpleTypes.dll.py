from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sciex_Data_Simpletypes_Dll_V0_1_0 = CommandToolBuilder(tool="Sciex.Data.SimpleTypes.dll", base_command=["Sciex.Data.SimpleTypes.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sciex_Data_Simpletypes_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

