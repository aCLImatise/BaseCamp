from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bp_Search2Table_Pl_V0_1_0 = CommandToolBuilder(tool="bp_search2table.pl", base_command=["bp_search2table.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Search2Table_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

