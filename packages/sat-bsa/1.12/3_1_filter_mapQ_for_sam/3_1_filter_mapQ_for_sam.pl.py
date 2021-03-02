from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


3_1_Filter_Mapq_For_Sam_Pl_V0_1_0 = CommandToolBuilder(tool="3_1_filter_mapQ_for_sam.pl", base_command=["3_1_filter_mapQ_for_sam.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/sat-bsa:1.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    3_1_Filter_Mapq_For_Sam_Pl_V0_1_0().translate("wdl")

