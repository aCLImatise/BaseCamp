from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Shiver_Full_Auto_Sh_V0_1_0 = CommandToolBuilder(tool="shiver_full_auto.sh", base_command=["shiver_full_auto.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shiver_Full_Auto_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

