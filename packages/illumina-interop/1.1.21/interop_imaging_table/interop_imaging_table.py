from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Interop_Imaging_Table_V0_1_0 = CommandToolBuilder(tool="interop_imaging_table", base_command=["interop_imaging_table"], inputs=[], outputs=[], container="quay.io/biocontainers/illumina-interop:1.1.21--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interop_Imaging_Table_V0_1_0().translate("wdl")

