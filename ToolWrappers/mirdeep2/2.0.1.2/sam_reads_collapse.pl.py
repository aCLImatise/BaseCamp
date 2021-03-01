from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sam_Reads_Collapse_Pl_V0_1_0 = CommandToolBuilder(tool="sam_reads_collapse.pl", base_command=["sam_reads_collapse.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sam_Reads_Collapse_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

