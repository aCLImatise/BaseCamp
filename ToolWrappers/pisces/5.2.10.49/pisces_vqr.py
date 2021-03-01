from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pisces_Vqr_V0_1_0 = CommandToolBuilder(tool="pisces_vqr", base_command=["pisces_vqr"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pisces_Vqr_V0_1_0().translate("wdl", allow_empty_container=True)

