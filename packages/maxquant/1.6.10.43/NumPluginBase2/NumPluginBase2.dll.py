from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Numpluginbase2_Dll_V0_1_0 = CommandToolBuilder(tool="NumPluginBase2.dll", base_command=["NumPluginBase2.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Numpluginbase2_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

