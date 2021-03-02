from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gsvar_Ini_Example_V0_1_0 = CommandToolBuilder(tool="GSvar.ini.example", base_command=["GSvar.ini.example"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsvar_Ini_Example_V0_1_0().translate("wdl", allow_empty_container=True)

