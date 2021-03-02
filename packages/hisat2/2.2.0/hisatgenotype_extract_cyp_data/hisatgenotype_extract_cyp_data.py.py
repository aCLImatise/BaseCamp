from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hisatgenotype_Extract_Cyp_Data_Py_V0_1_0 = CommandToolBuilder(tool="hisatgenotype_extract_cyp_data.py", base_command=["hisatgenotype_extract_cyp_data.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisatgenotype_Extract_Cyp_Data_Py_V0_1_0().translate("wdl", allow_empty_container=True)

