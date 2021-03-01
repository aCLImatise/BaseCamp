from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Deprecated_Decorator_Py_V0_1_0 = CommandToolBuilder(tool="deprecated_decorator.py", base_command=["deprecated_decorator.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deprecated_Decorator_Py_V0_1_0().translate("wdl", allow_empty_container=True)

