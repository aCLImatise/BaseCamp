from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prj2Make_V0_1_0 = CommandToolBuilder(tool="prj2make", base_command=["prj2make"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prj2Make_V0_1_0().translate("wdl", allow_empty_container=True)

