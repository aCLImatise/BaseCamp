from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pm4Ngs_Rnaseq_Demo_V0_1_0 = CommandToolBuilder(tool="pm4ngs_rnaseq_demo", base_command=["pm4ngs-rnaseq-demo"], inputs=[], outputs=[], container="quay.io/biocontainers/pm4ngs:0.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pm4Ngs_Rnaseq_Demo_V0_1_0().translate("wdl")

