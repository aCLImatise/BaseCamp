from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bact_Group_Many_Proteins_Many_Patterns_Py_V0_1_0 = CommandToolBuilder(tool="bact_group_many_proteins_many_patterns.py", base_command=["bact_group_many_proteins_many_patterns.py"], inputs=[], outputs=[], container="quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bact_Group_Many_Proteins_Many_Patterns_Py_V0_1_0().translate("wdl")

