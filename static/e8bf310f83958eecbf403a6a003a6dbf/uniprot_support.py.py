from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Uniprot_Support_Py_V0_1_0 = CommandToolBuilder(tool="uniprot_support.py", base_command=["uniprot_support.py"], inputs=[], outputs=[], container="quay.io/biocontainers/upimapi:1.1.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uniprot_Support_Py_V0_1_0().translate("wdl")

