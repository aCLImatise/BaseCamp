from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pangolearn_Smk_V0_1_0 = CommandToolBuilder(tool="pangolearn.smk", base_command=["pangolearn.smk"], inputs=[], outputs=[], container="quay.io/biocontainers/pangolin:2.3.0--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pangolearn_Smk_V0_1_0().translate("wdl")

