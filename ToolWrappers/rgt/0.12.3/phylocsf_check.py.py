from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phylocsf_Check_Py_V0_1_0 = CommandToolBuilder(tool="phylocsf_check.py", base_command=["phylocsf_check.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylocsf_Check_Py_V0_1_0().translate("wdl", allow_empty_container=True)

