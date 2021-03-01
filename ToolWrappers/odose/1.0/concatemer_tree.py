from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Concatemer_Tree_V0_1_0 = CommandToolBuilder(tool="concatemer_tree", base_command=["concatemer_tree"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Concatemer_Tree_V0_1_0().translate("wdl", allow_empty_container=True)

