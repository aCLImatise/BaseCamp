from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lineages_Py_V0_1_0 = CommandToolBuilder(tool="Lineages.py", base_command=["Lineages.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lineages_Py_V0_1_0().translate("wdl", allow_empty_container=True)

