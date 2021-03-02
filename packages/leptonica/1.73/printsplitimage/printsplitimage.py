from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Printsplitimage_V0_1_0 = CommandToolBuilder(tool="printsplitimage", base_command=["printsplitimage"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Printsplitimage_V0_1_0().translate("wdl", allow_empty_container=True)

