from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hisatgenotype_Convert_Codis_Py_V0_1_0 = CommandToolBuilder(tool="hisatgenotype_convert_codis.py", base_command=["hisatgenotype_convert_codis.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisatgenotype_Convert_Codis_Py_V0_1_0().translate("wdl", allow_empty_container=True)

