from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


5_2_Make_Format_Pl_V0_1_0 = CommandToolBuilder(tool="5_2_make_format.pl", base_command=["5_2_make_format.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/sat-bsa:1.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    5_2_Make_Format_Pl_V0_1_0().translate("wdl")

