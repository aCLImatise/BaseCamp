from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Basedataaccess_Dll_Config_V0_1_0 = CommandToolBuilder(tool="BaseDataAccess.dll.config", base_command=["BaseDataAccess.dll.config"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basedataaccess_Dll_Config_V0_1_0().translate("wdl", allow_empty_container=True)

