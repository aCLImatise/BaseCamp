from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Org_Mentalis_Security_Dll_V0_1_0 = CommandToolBuilder(tool="Org.Mentalis.Security.dll", base_command=["Org.Mentalis.Security.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Org_Mentalis_Security_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

