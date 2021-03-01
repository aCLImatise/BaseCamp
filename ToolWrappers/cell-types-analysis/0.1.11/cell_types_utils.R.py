from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cell_Types_Utils_R_V0_1_0 = CommandToolBuilder(tool="cell_types_utils.R", base_command=["cell_types_utils.R"], inputs=[], outputs=[], container="quay.io/biocontainers/cell-types-analysis:0.1.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cell_Types_Utils_R_V0_1_0().translate("wdl")

