from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Seacr_1_3_Sh_V0_1_0 = CommandToolBuilder(tool="SEACR_1.3.sh", base_command=["SEACR_1.3.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seacr_1_3_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

