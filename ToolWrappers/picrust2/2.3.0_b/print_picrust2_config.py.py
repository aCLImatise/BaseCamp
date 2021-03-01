from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Print_Picrust2_Config_Py_V0_1_0 = CommandToolBuilder(tool="print_picrust2_config.py", base_command=["print_picrust2_config.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Print_Picrust2_Config_Py_V0_1_0().translate("wdl", allow_empty_container=True)

