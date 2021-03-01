from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Msscan_Xspecific_Xsd_V0_1_0 = CommandToolBuilder(tool="MSScan_XSpecific.xsd", base_command=["MSScan_XSpecific.xsd"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msscan_Xspecific_Xsd_V0_1_0().translate("wdl", allow_empty_container=True)

