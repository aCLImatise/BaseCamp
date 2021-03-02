from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blacksheep_V0_1_0 = CommandToolBuilder(tool="blacksheep", base_command=["blacksheep"], inputs=[], outputs=[], container="quay.io/biocontainers/blksheep:0.0.7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blacksheep_V0_1_0().translate("wdl")

