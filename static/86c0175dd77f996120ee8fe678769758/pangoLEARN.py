from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pangolearn_V0_1_0 = CommandToolBuilder(tool="pangoLEARN", base_command=["pangoLEARN"], inputs=[], outputs=[], container="quay.io/biocontainers/pangolearn:2021.04.01--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pangolearn_V0_1_0().translate("wdl")

