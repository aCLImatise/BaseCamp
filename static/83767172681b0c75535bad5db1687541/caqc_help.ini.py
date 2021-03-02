from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Caqc_Help_Ini_V0_1_0 = CommandToolBuilder(tool="caqc_help.ini", base_command=["caqc_help.ini"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Caqc_Help_Ini_V0_1_0().translate("wdl", allow_empty_container=True)

