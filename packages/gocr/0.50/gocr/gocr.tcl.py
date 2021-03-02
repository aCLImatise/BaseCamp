from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gocr_Tcl_V0_1_0 = CommandToolBuilder(tool="gocr.tcl", base_command=["gocr.tcl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gocr_Tcl_V0_1_0().translate("wdl", allow_empty_container=True)

