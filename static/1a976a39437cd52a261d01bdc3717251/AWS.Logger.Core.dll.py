from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Aws_Logger_Core_Dll_V0_1_0 = CommandToolBuilder(tool="AWS.Logger.Core.dll", base_command=["AWS.Logger.Core.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aws_Logger_Core_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

