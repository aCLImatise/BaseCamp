from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fc_Ovlp_Filter_Py_V0_1_0 = CommandToolBuilder(tool="fc_ovlp_filter.py", base_command=["fc_ovlp_filter.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Ovlp_Filter_Py_V0_1_0().translate("wdl", allow_empty_container=True)

