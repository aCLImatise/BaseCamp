from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Hic_Array_Pl_V0_1_0 = CommandToolBuilder(tool="make_hic_array.pl", base_command=["make_hic_array.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Hic_Array_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

