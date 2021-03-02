from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cluster_Submit_Sh_V0_1_0 = CommandToolBuilder(tool="cluster_submit.sh", base_command=["cluster_submit.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cluster_Submit_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

