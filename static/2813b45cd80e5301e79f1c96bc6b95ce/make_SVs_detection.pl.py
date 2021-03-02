from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Svs_Detection_Pl_V0_1_0 = CommandToolBuilder(tool="make_SVs_detection.pl", base_command=["make_SVs_detection.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/sat-bsa:1.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Svs_Detection_Pl_V0_1_0().translate("wdl")

