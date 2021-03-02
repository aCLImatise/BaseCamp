from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Utilswf_Dll_V0_1_0 = CommandToolBuilder(tool="UtilsWf.dll", base_command=["UtilsWf.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Utilswf_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

