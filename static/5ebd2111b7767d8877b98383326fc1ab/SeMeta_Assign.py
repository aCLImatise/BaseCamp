from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Semeta_Assign_V0_1_0 = CommandToolBuilder(tool="SeMeta_Assign", base_command=["SeMeta_Assign"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Semeta_Assign_V0_1_0().translate("wdl", allow_empty_container=True)

