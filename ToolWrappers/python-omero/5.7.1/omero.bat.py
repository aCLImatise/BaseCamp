from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Omero_Bat_V0_1_0 = CommandToolBuilder(tool="omero.bat", base_command=["omero.bat"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Omero_Bat_V0_1_0().translate("wdl", allow_empty_container=True)

