from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Blat_O_V0_1_0 = CommandToolBuilder(tool="filter_blat.o", base_command=["filter_blat.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Blat_O_V0_1_0().translate("wdl", allow_empty_container=True)

