from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phastconsdb2Hints_Pl_V0_1_0 = CommandToolBuilder(tool="phastconsDB2hints.pl", base_command=["phastconsDB2hints.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phastconsdb2Hints_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

