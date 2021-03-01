from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tgt_Print_Tiernames_Py_V0_1_0 = CommandToolBuilder(tool="tgt_print_tiernames.py", base_command=["tgt-print-tiernames.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tgt_Print_Tiernames_Py_V0_1_0().translate("wdl", allow_empty_container=True)

