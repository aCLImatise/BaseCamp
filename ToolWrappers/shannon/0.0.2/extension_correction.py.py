from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extension_Correction_Py_V0_1_0 = CommandToolBuilder(tool="extension_correction.py", base_command=["extension_correction.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extension_Correction_Py_V0_1_0().translate("wdl", allow_empty_container=True)

