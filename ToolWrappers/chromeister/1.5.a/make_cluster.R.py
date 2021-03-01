from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Cluster_R_V0_1_0 = CommandToolBuilder(tool="make_cluster.R", base_command=["make-cluster.R"], inputs=[], outputs=[], container="quay.io/biocontainers/chromeister:1.5.a--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Cluster_R_V0_1_0().translate("wdl")

