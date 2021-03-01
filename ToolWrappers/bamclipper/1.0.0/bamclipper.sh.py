from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamclipper_Sh_V0_1_0 = CommandToolBuilder(tool="bamclipper.sh", base_command=["bamclipper.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamclipper_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

