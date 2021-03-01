from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Infobase_V0_1_0 = CommandToolBuilder(tool="infobase", base_command=["infobase"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Infobase_V0_1_0().translate("wdl", allow_empty_container=True)

