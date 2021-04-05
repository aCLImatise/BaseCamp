from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pm4Ngs_Chipexo_Demo_V0_1_0 = CommandToolBuilder(tool="pm4ngs_chipexo_demo", base_command=["pm4ngs-chipexo-demo"], inputs=[], outputs=[], container="quay.io/biocontainers/pm4ngs:0.0.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pm4Ngs_Chipexo_Demo_V0_1_0().translate("wdl")

