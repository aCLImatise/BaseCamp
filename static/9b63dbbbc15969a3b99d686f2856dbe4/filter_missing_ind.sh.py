from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Missing_Ind_Sh_V0_1_0 = CommandToolBuilder(tool="filter_missing_ind.sh", base_command=["filter_missing_ind.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/ddocent:2.8.13--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Missing_Ind_Sh_V0_1_0().translate("wdl")

