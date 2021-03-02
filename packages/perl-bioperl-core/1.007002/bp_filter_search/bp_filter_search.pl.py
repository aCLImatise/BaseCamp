from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bp_Filter_Search_Pl_V0_1_0 = CommandToolBuilder(tool="bp_filter_search.pl", base_command=["bp_filter_search.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Filter_Search_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

