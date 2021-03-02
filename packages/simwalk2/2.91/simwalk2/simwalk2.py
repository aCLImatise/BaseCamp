from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Simwalk2_V0_1_0 = CommandToolBuilder(tool="simwalk2", base_command=["simwalk2"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simwalk2_V0_1_0().translate("wdl", allow_empty_container=True)

