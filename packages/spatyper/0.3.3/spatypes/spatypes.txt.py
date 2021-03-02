from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Spatypes_Txt_V0_1_0 = CommandToolBuilder(tool="spatypes.txt", base_command=["spatypes.txt"], inputs=[], outputs=[], container="quay.io/biocontainers/spatyper:0.3.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spatypes_Txt_V0_1_0().translate("wdl")

