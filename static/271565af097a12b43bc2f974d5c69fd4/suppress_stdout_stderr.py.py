from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Suppress_Stdout_Stderr_Py_V0_1_0 = CommandToolBuilder(tool="suppress_stdout_stderr.py", base_command=["suppress_stdout_stderr.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Suppress_Stdout_Stderr_Py_V0_1_0().translate("wdl", allow_empty_container=True)

