from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cgatreport_Serve_V0_1_0 = CommandToolBuilder(tool="cgatreport_serve", base_command=["cgatreport-serve"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgatreport_Serve_V0_1_0().translate("wdl", allow_empty_container=True)

