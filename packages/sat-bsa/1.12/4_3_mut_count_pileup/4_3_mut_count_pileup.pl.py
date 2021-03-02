from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


4_3_Mut_Count_Pileup_Pl_V0_1_0 = CommandToolBuilder(tool="4_3_mut_count_pileup.pl", base_command=["4_3_mut_count_pileup.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/sat-bsa:1.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    4_3_Mut_Count_Pileup_Pl_V0_1_0().translate("wdl")

