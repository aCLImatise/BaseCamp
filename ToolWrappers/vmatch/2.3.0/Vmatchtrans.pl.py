from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vmatchtrans_Pl_V0_1_0 = CommandToolBuilder(tool="Vmatchtrans.pl", base_command=["Vmatchtrans.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vmatchtrans_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

