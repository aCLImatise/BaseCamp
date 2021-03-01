from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Validatesnp3_Py_V0_1_0 = CommandToolBuilder(tool="validateSNP3.py", base_command=["validateSNP3.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validatesnp3_Py_V0_1_0().translate("wdl", allow_empty_container=True)

