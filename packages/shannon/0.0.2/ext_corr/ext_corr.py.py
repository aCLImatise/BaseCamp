from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ext_Corr_Py_V0_1_0 = CommandToolBuilder(tool="ext_corr.py", base_command=["ext_corr.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ext_Corr_Py_V0_1_0().translate("wdl", allow_empty_container=True)

