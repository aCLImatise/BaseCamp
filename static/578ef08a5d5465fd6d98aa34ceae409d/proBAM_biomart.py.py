from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Probam_Biomart_Py_V0_1_0 = CommandToolBuilder(tool="proBAM_biomart.py", base_command=["proBAM_biomart.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probam_Biomart_Py_V0_1_0().translate("wdl", allow_empty_container=True)

