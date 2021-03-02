from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dnapars_V0_1_0 = CommandToolBuilder(tool="dnapars", base_command=["dnapars"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnapars_V0_1_0().translate("wdl", allow_empty_container=True)

