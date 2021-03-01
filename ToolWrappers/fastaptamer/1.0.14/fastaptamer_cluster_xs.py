from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastaptamer_Cluster_Xs_V0_1_0 = CommandToolBuilder(tool="fastaptamer_cluster_xs", base_command=["fastaptamer_cluster_xs"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaptamer_Cluster_Xs_V0_1_0().translate("wdl", allow_empty_container=True)

