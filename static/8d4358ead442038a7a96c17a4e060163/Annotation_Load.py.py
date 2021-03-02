from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Annotation_Load_Py_V0_1_0 = CommandToolBuilder(tool="Annotation_Load.py", base_command=["Annotation_Load.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotation_Load_Py_V0_1_0().translate("wdl", allow_empty_container=True)

