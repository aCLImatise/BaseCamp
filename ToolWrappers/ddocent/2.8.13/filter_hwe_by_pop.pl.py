from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Hwe_By_Pop_Pl_V0_1_0 = CommandToolBuilder(tool="filter_hwe_by_pop.pl", base_command=["filter_hwe_by_pop.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/ddocent:2.8.13--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Hwe_By_Pop_Pl_V0_1_0().translate("wdl")

