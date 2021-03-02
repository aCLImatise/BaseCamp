from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Itextsharp_Dll_V0_1_0 = CommandToolBuilder(tool="itextsharp.dll", base_command=["itextsharp.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Itextsharp_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

