from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pycompleter2_7_V0_1_0 = CommandToolBuilder(tool="pycompleter2.7", base_command=["pycompleter2.7"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pycompleter2_7_V0_1_0().translate("wdl", allow_empty_container=True)

