from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ms_Single_To_Table_V0_1_0 = CommandToolBuilder(tool="MS_single_to_table", base_command=["MS-single-to-table"], inputs=[], outputs=[], container="quay.io/biocontainers/dms:1.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ms_Single_To_Table_V0_1_0().translate("wdl")

