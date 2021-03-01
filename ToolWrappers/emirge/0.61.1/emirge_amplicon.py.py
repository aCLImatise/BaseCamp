from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Emirge_Amplicon_Py_V0_1_0 = CommandToolBuilder(tool="emirge_amplicon.py", base_command=["emirge_amplicon.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Emirge_Amplicon_Py_V0_1_0().translate("wdl", allow_empty_container=True)

