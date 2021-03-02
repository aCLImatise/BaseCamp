from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


4_1_Fa_Size_Pl_V0_1_0 = CommandToolBuilder(tool="4_1_fa_size.pl", base_command=["4_1_fa_size.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/sat-bsa:1.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    4_1_Fa_Size_Pl_V0_1_0().translate("wdl")

