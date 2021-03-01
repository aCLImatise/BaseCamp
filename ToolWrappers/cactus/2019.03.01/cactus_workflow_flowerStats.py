from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cactus_Workflow_Flowerstats_V0_1_0 = CommandToolBuilder(tool="cactus_workflow_flowerStats", base_command=["cactus_workflow_flowerStats"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Workflow_Flowerstats_V0_1_0().translate("wdl", allow_empty_container=True)

