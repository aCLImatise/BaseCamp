from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Removehuman2_Sh_V0_1_0 = CommandToolBuilder(tool="removehuman2.sh", base_command=["removehuman2.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Removehuman2_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

