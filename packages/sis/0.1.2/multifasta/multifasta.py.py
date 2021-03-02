from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Multifasta_Py_V0_1_0 = CommandToolBuilder(tool="multifasta.py", base_command=["multifasta.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multifasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

