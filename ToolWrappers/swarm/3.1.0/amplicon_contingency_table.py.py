from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Amplicon_Contingency_Table_Py_V0_1_0 = CommandToolBuilder(tool="amplicon_contingency_table.py", base_command=["amplicon_contingency_table.py"], inputs=[], outputs=[], container="quay.io/biocontainers/swarm:3.1.0--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amplicon_Contingency_Table_Py_V0_1_0().translate("wdl")

