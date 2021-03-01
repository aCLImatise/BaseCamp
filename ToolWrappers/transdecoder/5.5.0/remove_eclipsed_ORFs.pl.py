from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Remove_Eclipsed_Orfs_Pl_V0_1_0 = CommandToolBuilder(tool="remove_eclipsed_ORFs.pl", base_command=["remove_eclipsed_ORFs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Eclipsed_Orfs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

