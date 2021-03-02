from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Probdist_V0_1_0 = CommandToolBuilder(tool="probdist", base_command=["probdist"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probdist_V0_1_0().translate("wdl", allow_empty_container=True)

