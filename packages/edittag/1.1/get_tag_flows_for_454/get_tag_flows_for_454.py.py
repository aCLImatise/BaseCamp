from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Tag_Flows_For_454_Py_V0_1_0 = CommandToolBuilder(tool="get_tag_flows_for_454.py", base_command=["get_tag_flows_for_454.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Tag_Flows_For_454_Py_V0_1_0().translate("wdl", allow_empty_container=True)

