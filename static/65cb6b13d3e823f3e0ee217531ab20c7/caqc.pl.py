from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Caqc_Pl_V0_1_0 = CommandToolBuilder(tool="caqc.pl", base_command=["caqc.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Caqc_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

