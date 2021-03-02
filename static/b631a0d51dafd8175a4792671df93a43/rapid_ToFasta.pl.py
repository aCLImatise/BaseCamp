from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rapid_Tofasta_Pl_V0_1_0 = CommandToolBuilder(tool="rapid_ToFasta.pl", base_command=["rapid_ToFasta.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rapid_Tofasta_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

