from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sciex_Clearcore_Fman_Dll_V0_1_0 = CommandToolBuilder(tool="Sciex.Clearcore.FMan.dll", base_command=["Sciex.Clearcore.FMan.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sciex_Clearcore_Fman_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

