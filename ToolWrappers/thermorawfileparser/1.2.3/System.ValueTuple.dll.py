from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


System_Valuetuple_Dll_V0_1_0 = CommandToolBuilder(tool="System.ValueTuple.dll", base_command=["System.ValueTuple.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    System_Valuetuple_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

