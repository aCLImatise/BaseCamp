from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cwltool2Wdl_Py_V0_1_0 = CommandToolBuilder(tool="cwltool2wdl.py", base_command=["cwltool2wdl.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cwltool2Wdl_Py_V0_1_0().translate("wdl", allow_empty_container=True)

