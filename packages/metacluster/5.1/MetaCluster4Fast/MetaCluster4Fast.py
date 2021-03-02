from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Metacluster4Fast_V0_1_0 = CommandToolBuilder(tool="MetaCluster4Fast", base_command=["MetaCluster4Fast"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metacluster4Fast_V0_1_0().translate("wdl", allow_empty_container=True)

