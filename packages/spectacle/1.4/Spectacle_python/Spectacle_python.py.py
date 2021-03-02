from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Spectacle_Python_Py_V0_1_0 = CommandToolBuilder(tool="Spectacle_python.py", base_command=["Spectacle_python.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spectacle_Python_Py_V0_1_0().translate("wdl", allow_empty_container=True)

