from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Metacluster5_2_V0_1_0 = CommandToolBuilder(tool="MetaCluster5_2", base_command=["MetaCluster5_2"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metacluster5_2_V0_1_0().translate("wdl", allow_empty_container=True)

