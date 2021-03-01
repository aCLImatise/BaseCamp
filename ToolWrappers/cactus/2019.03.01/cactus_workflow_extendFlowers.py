from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cactus_Workflow_Extendflowers_V0_1_0 = CommandToolBuilder(tool="cactus_workflow_extendFlowers", base_command=["cactus_workflow_extendFlowers"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Workflow_Extendflowers_V0_1_0().translate("wdl", allow_empty_container=True)

