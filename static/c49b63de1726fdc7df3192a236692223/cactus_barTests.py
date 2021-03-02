from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cactus_Bartests_V0_1_0 = CommandToolBuilder(tool="cactus_barTests", base_command=["cactus_barTests"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Bartests_V0_1_0().translate("wdl", allow_empty_container=True)

