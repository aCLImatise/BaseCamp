from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Zlib_Net_Dll_V0_1_0 = CommandToolBuilder(tool="zlib.net.dll", base_command=["zlib.net.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zlib_Net_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

