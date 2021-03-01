from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clearcore2_Data_Analystdataprovider_Dll_V0_1_0 = CommandToolBuilder(tool="Clearcore2.Data.AnalystDataProvider.dll", base_command=["Clearcore2.Data.AnalystDataProvider.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clearcore2_Data_Analystdataprovider_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

