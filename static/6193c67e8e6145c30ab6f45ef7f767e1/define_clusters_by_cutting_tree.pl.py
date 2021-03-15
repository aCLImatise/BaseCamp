from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Define_Clusters_By_Cutting_Tree_Pl_V0_1_0 = CommandToolBuilder(tool="define_clusters_by_cutting_tree.pl", base_command=["define_clusters_by_cutting_tree.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/trinity:2.12.0--h5ef6573_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Define_Clusters_By_Cutting_Tree_Pl_V0_1_0().translate("wdl")

