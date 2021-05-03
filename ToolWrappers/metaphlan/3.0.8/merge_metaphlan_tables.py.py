from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Merge_Metaphlan_Tables_Py_V0_1_0 = CommandToolBuilder(tool="merge_metaphlan_tables.py", base_command=["merge_metaphlan_tables.py"], inputs=[], outputs=[], container="quay.io/biocontainers/metaphlan:3.0.8--pyhb7b1952_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Metaphlan_Tables_Py_V0_1_0().translate("wdl")

