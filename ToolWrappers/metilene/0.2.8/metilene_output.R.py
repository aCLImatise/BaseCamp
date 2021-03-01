from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Metilene_Output_R_V0_1_0 = CommandToolBuilder(tool="metilene_output.R", base_command=["metilene_output.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metilene_Output_R_V0_1_0().translate("wdl", allow_empty_container=True)

