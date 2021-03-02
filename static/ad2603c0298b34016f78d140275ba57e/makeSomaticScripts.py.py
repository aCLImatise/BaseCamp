from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makesomaticscripts_Py_V0_1_0 = CommandToolBuilder(tool="makeSomaticScripts.py", base_command=["makeSomaticScripts.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makesomaticscripts_Py_V0_1_0().translate("wdl", allow_empty_container=True)

