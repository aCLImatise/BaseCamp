from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clustal_To_Alma_Py_V0_1_0 = CommandToolBuilder(tool="clustal_to_alma.py", base_command=["clustal_to_alma.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustal_To_Alma_Py_V0_1_0().translate("wdl", allow_empty_container=True)

