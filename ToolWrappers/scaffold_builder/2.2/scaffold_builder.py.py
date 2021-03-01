from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Scaffold_Builder_Py_V0_1_0 = CommandToolBuilder(tool="scaffold_builder.py", base_command=["scaffold_builder.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scaffold_Builder_Py_V0_1_0().translate("wdl", allow_empty_container=True)

