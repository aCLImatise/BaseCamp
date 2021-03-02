from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parallel_Blat_Python_Py_V0_1_0 = CommandToolBuilder(tool="parallel_blat_python.py", base_command=["parallel_blat_python.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parallel_Blat_Python_Py_V0_1_0().translate("wdl", allow_empty_container=True)

