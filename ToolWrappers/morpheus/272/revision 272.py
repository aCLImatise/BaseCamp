from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Revision_272_V0_1_0 = CommandToolBuilder(tool="revision 272", base_command=["revision 272"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Revision_272_V0_1_0().translate("wdl", allow_empty_container=True)

