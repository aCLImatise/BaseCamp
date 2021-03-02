from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fgs_Gff_Py_V0_1_0 = CommandToolBuilder(tool="FGS_gff.py", base_command=["FGS_gff.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fgs_Gff_Py_V0_1_0().translate("wdl", allow_empty_container=True)

