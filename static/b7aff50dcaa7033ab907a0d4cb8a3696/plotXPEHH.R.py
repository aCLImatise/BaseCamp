from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plotxpehh_R_V0_1_0 = CommandToolBuilder(tool="plotXPEHH.R", base_command=["plotXPEHH.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plotxpehh_R_V0_1_0().translate("wdl", allow_empty_container=True)

