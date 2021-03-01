from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fc_Ctg_Link_Analysis_Py_V0_1_0 = CommandToolBuilder(tool="fc_ctg_link_analysis.py", base_command=["fc_ctg_link_analysis.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Ctg_Link_Analysis_Py_V0_1_0().translate("wdl", allow_empty_container=True)

