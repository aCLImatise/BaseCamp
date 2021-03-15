from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dadaist2_Transposetaxa_Py_V0_1_0 = CommandToolBuilder(tool="dadaist2_transposetaxa.py", base_command=["dadaist2-transposetaxa.py"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Transposetaxa_Py_V0_1_0().translate("wdl")

