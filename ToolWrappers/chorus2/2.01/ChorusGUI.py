from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Chorusgui_V0_1_0 = CommandToolBuilder(tool="ChorusGUI", base_command=["ChorusGUI"], inputs=[], outputs=[], container="quay.io/biocontainers/chorus2:2.01--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chorusgui_V0_1_0().translate("wdl")

