from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gsvar_Filters_Sv_Ini_V0_1_0 = CommandToolBuilder(tool="GSvar_filters_sv.ini", base_command=["GSvar_filters_sv.ini"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsvar_Filters_Sv_Ini_V0_1_0().translate("wdl", allow_empty_container=True)

