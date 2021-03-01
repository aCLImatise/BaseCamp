from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Namotion_Reflection_Dll_V0_1_0 = CommandToolBuilder(tool="Namotion.Reflection.dll", base_command=["Namotion.Reflection.dll"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Namotion_Reflection_Dll_V0_1_0().translate("wdl")

