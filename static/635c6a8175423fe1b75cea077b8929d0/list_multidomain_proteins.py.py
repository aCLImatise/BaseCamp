from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


List_Multidomain_Proteins_Py_V0_1_0 = CommandToolBuilder(tool="list_multidomain_proteins.py", base_command=["list_multidomain_proteins.py"], inputs=[], outputs=[], container="quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    List_Multidomain_Proteins_Py_V0_1_0().translate("wdl")

