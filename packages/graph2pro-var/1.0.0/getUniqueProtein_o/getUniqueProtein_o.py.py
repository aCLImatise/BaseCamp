from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getuniqueprotein_O_Py_V0_1_0 = CommandToolBuilder(tool="getUniqueProtein_o.py", base_command=["getUniqueProtein_o.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getuniqueprotein_O_Py_V0_1_0().translate("wdl", allow_empty_container=True)

