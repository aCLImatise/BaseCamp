from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Utilswpf_Dll_V0_1_0 = CommandToolBuilder(tool="UtilsWpf.dll", base_command=["UtilsWpf.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Utilswpf_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

