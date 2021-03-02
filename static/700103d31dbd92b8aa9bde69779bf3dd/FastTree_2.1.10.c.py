from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fasttree_2_1_10_C_V0_1_0 = CommandToolBuilder(tool="FastTree_2.1.10.c", base_command=["FastTree-2.1.10.c"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasttree_2_1_10_C_V0_1_0().translate("wdl", allow_empty_container=True)

