from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cactus2Hal_Stitch_Sh_V0_1_0 = CommandToolBuilder(tool="cactus2hal_stitch.sh", base_command=["cactus2hal-stitch.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus2Hal_Stitch_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

