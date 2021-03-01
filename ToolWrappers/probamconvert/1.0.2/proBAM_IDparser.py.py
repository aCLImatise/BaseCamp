from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Probam_Idparser_Py_V0_1_0 = CommandToolBuilder(tool="proBAM_IDparser.py", base_command=["proBAM_IDparser.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probam_Idparser_Py_V0_1_0().translate("wdl", allow_empty_container=True)

