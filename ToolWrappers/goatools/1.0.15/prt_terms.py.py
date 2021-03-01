from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prt_Terms_Py_V0_1_0 = CommandToolBuilder(tool="prt_terms.py", base_command=["prt_terms.py"], inputs=[], outputs=[], container="quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prt_Terms_Py_V0_1_0().translate("wdl")

