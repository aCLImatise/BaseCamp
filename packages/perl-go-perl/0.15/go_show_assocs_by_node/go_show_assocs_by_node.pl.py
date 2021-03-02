from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Go_Show_Assocs_By_Node_Pl_V0_1_0 = CommandToolBuilder(tool="go_show_assocs_by_node.pl", base_command=["go-show-assocs-by-node.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Go_Show_Assocs_By_Node_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

