from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Starchcluster_Sge_Typical_V0_1_0 = CommandToolBuilder(tool="starchcluster_sge_typical", base_command=["starchcluster_sge-typical"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starchcluster_Sge_Typical_V0_1_0().translate("wdl", allow_empty_container=True)

