from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Shapemapper_Py_V0_1_0 = CommandToolBuilder(tool="ShapeMapper.py", base_command=["ShapeMapper.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shapemapper_Py_V0_1_0().translate("wdl", allow_empty_container=True)

