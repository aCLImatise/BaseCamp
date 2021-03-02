from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Arv_Crunch_Job_V0_1_0 = CommandToolBuilder(tool="arv_crunch_job", base_command=["arv-crunch-job"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arv_Crunch_Job_V0_1_0().translate("wdl", allow_empty_container=True)

