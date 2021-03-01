from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makeuniformrecfile_Pl_V0_1_0 = CommandToolBuilder(tool="makeuniformrecfile.pl", base_command=["makeuniformrecfile.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makeuniformrecfile_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

