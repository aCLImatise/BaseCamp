from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gthsplit2Dim_Sh_V0_1_0 = CommandToolBuilder(tool="gthsplit2dim.sh", base_command=["gthsplit2dim.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gthsplit2Dim_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

