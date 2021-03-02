from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getvariants_Py_V0_1_0 = CommandToolBuilder(tool="GetVariants.py", base_command=["GetVariants.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getvariants_Py_V0_1_0().translate("wdl", allow_empty_container=True)

