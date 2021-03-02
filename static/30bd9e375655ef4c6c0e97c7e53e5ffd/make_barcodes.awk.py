from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Barcodes_Awk_V0_1_0 = CommandToolBuilder(tool="make_barcodes.awk", base_command=["make-barcodes.awk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Barcodes_Awk_V0_1_0().translate("wdl", allow_empty_container=True)

