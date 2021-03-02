from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Match_List_Col_Awk_V0_1_0 = CommandToolBuilder(tool="match_list_col.awk", base_command=["match-list-col.awk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Match_List_Col_Awk_V0_1_0().translate("wdl", allow_empty_container=True)

