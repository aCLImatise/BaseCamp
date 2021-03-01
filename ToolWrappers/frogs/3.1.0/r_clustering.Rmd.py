from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


R_Clustering_Rmd_V0_1_0 = CommandToolBuilder(tool="r_clustering.Rmd", base_command=["r_clustering.Rmd"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    R_Clustering_Rmd_V0_1_0().translate("wdl", allow_empty_container=True)

