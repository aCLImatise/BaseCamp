from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Puncsamfile_Sh_V0_1_0 = CommandToolBuilder(tool="puncsamfile.sh", base_command=["puncsamfile.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Puncsamfile_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

