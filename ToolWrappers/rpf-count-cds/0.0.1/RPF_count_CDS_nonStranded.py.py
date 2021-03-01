from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rpf_Count_Cds_Nonstranded_Py_V0_1_0 = CommandToolBuilder(tool="RPF_count_CDS_nonStranded.py", base_command=["RPF_count_CDS_nonStranded.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rpf_Count_Cds_Nonstranded_Py_V0_1_0().translate("wdl", allow_empty_container=True)

