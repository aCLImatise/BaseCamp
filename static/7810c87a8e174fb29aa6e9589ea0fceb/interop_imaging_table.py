from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Interop_Imaging_Table_V0_1_0 = CommandToolBuilder(tool="interop_imaging_table", base_command=["interop_imaging_table"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interop_Imaging_Table_V0_1_0().translate("wdl", allow_empty_container=True)

