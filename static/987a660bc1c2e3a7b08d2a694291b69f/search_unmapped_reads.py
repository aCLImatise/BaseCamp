from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Search_Unmapped_Reads_V0_1_0 = CommandToolBuilder(tool="search_unmapped_reads", base_command=["search_unmapped_reads"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Search_Unmapped_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

