from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Quick_Hierarchical_Clustering_V0_1_0 = CommandToolBuilder(tool="quick_hierarchical_clustering", base_command=["quick_hierarchical_clustering"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quick_Hierarchical_Clustering_V0_1_0().translate("wdl", allow_empty_container=True)

