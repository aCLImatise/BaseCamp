from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Compositional_Methods_Py_V0_1_0 = CommandToolBuilder(tool="compositional_methods.py", base_command=["compositional_methods.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compositional_Methods_Py_V0_1_0().translate("wdl", allow_empty_container=True)

