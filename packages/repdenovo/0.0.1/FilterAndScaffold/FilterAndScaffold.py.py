from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filterandscaffold_Py_V0_1_0 = CommandToolBuilder(tool="FilterAndScaffold.py", base_command=["FilterAndScaffold.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterandscaffold_Py_V0_1_0().translate("wdl", allow_empty_container=True)

