from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hbvblast_Sh_V0_1_0 = CommandToolBuilder(tool="hbvblast.sh", base_command=["hbvblast.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hbvblast_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

