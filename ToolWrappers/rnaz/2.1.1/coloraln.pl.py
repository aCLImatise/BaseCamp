from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Coloraln_Pl_V0_1_0 = CommandToolBuilder(tool="coloraln.pl", base_command=["coloraln.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coloraln_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

