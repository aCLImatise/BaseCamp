from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ragtag_Scaffold_Py_V0_1_0 = CommandToolBuilder(tool="ragtag_scaffold.py", base_command=["ragtag_scaffold.py"], inputs=[], outputs=[], container="quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragtag_Scaffold_Py_V0_1_0().translate("wdl")

