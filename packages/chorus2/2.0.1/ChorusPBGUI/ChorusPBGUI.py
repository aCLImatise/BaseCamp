from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Choruspbgui_V0_1_0 = CommandToolBuilder(tool="ChorusPBGUI", base_command=["ChorusPBGUI"], inputs=[], outputs=[], container="quay.io/biocontainers/chorus2:2.0.1--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Choruspbgui_V0_1_0().translate("wdl")

