from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Doit_V0_1_0 = CommandToolBuilder(tool="doit", base_command=["doit"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Doit_V0_1_0().translate("wdl", allow_empty_container=True)

