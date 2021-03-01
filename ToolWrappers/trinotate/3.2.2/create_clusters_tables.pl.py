from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Create_Clusters_Tables_Pl_V0_1_0 = CommandToolBuilder(tool="create_clusters_tables.pl", base_command=["create_clusters_tables.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Clusters_Tables_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

