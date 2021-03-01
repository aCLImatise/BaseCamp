from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sc3_Sc3_Validate_R_V0_1_0 = CommandToolBuilder(tool="sc3_sc3_validate.R", base_command=["sc3-sc3-validate.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sc3_Sc3_Validate_R_V0_1_0().translate("wdl", allow_empty_container=True)

