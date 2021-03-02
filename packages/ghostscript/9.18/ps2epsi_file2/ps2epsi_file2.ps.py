from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ps2Epsi_File2_Ps_V0_1_0 = CommandToolBuilder(tool="ps2epsi_file2.ps", base_command=["ps2epsi", "file2.ps"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ps2Epsi_File2_Ps_V0_1_0().translate("wdl", allow_empty_container=True)

