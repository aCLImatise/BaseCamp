from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Comp_Fusiondb_Offset_V0_1_0 = CommandToolBuilder(tool="comp_fusiondb_offset", base_command=["comp_fusiondb_offset"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comp_Fusiondb_Offset_V0_1_0().translate("wdl", allow_empty_container=True)

