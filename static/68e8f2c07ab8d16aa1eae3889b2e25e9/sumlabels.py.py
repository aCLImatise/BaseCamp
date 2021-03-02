from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sumlabels_Py_V0_1_0 = CommandToolBuilder(tool="sumlabels.py", base_command=["sumlabels.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sumlabels_Py_V0_1_0().translate("wdl", allow_empty_container=True)

