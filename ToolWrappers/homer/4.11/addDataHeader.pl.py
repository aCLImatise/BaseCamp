from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Adddataheader_Pl_V0_1_0 = CommandToolBuilder(tool="addDataHeader.pl", base_command=["addDataHeader.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Adddataheader_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

