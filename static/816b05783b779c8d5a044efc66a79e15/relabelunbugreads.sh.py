from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Relabelunbugreads_Sh_V0_1_0 = CommandToolBuilder(tool="relabelunbugreads.sh", base_command=["relabelunbugreads.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Relabelunbugreads_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

