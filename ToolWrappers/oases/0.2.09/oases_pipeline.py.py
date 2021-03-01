from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Oases_Pipeline_Py_V0_1_0 = CommandToolBuilder(tool="oases_pipeline.py", base_command=["oases_pipeline.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oases_Pipeline_Py_V0_1_0().translate("wdl", allow_empty_container=True)

