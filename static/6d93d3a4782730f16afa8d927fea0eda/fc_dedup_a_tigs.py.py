from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fc_Dedup_A_Tigs_Py_V0_1_0 = CommandToolBuilder(tool="fc_dedup_a_tigs.py", base_command=["fc_dedup_a_tigs.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Dedup_A_Tigs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

