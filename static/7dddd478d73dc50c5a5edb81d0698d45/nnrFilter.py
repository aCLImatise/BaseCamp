from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nnrfilter_V0_1_0 = CommandToolBuilder(tool="nnrFilter", base_command=["nnrFilter"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nnrfilter_V0_1_0().translate("wdl", allow_empty_container=True)

