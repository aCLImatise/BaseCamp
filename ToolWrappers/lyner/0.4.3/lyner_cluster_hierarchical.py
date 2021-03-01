from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lyner_Cluster_Hierarchical_V0_1_0 = CommandToolBuilder(tool="lyner_cluster_hierarchical", base_command=["lyner", "cluster-hierarchical"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Cluster_Hierarchical_V0_1_0().translate("wdl", allow_empty_container=True)

