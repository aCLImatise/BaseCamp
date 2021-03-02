from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Teamcity_Servicemessages_Dll_V0_1_0 = CommandToolBuilder(tool="TeamCity.ServiceMessages.dll", base_command=["TeamCity.ServiceMessages.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Teamcity_Servicemessages_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

