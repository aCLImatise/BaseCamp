from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lofreq2_Indel_Ovlp_Py_V0_1_0 = CommandToolBuilder(tool="lofreq2_indel_ovlp.py", base_command=["lofreq2_indel_ovlp.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lofreq2_Indel_Ovlp_Py_V0_1_0().translate("wdl", allow_empty_container=True)

