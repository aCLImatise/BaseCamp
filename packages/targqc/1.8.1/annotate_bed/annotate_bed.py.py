from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Annotate_Bed_Py_V0_1_0 = CommandToolBuilder(tool="annotate_bed.py", base_command=["annotate_bed.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotate_Bed_Py_V0_1_0().translate("wdl", allow_empty_container=True)

