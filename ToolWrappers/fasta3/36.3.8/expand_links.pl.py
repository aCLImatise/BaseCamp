from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Expand_Links_Pl_V0_1_0 = CommandToolBuilder(tool="expand_links.pl", base_command=["expand_links.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Expand_Links_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

