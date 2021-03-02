from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Primedlamp_Inclusivity_Update_V0_1_0 = CommandToolBuilder(tool="PrimedLAMP_Inclusivity_Update", base_command=["PrimedLAMP_Inclusivity_Update"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primedlamp_Inclusivity_Update_V0_1_0().translate("wdl", allow_empty_container=True)

