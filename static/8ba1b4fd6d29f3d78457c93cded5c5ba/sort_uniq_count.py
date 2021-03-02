from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sort_Uniq_Count_V0_1_0 = CommandToolBuilder(tool="sort_uniq_count", base_command=["sort-uniq-count"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sort_Uniq_Count_V0_1_0().translate("wdl")

