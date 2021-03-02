from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Long_Reads_Alignment_Pl_V0_1_0 = CommandToolBuilder(tool="make_Long_reads_alignment.pl", base_command=["make_Long_reads_alignment.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/sat-bsa:1.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Long_Reads_Alignment_Pl_V0_1_0().translate("wdl")

