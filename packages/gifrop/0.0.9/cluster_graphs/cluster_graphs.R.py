from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cluster_Graphs_R_V0_1_0 = CommandToolBuilder(tool="cluster_graphs.R", base_command=["cluster_graphs.R"], inputs=[], outputs=[], container="quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cluster_Graphs_R_V0_1_0().translate("wdl")

