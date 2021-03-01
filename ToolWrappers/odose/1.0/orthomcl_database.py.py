from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Orthomcl_Database_Py_V0_1_0 = CommandToolBuilder(tool="orthomcl_database.py", base_command=["orthomcl_database.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomcl_Database_Py_V0_1_0().translate("wdl", allow_empty_container=True)

