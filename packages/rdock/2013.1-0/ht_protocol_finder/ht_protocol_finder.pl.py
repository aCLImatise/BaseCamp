from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ht_Protocol_Finder_Pl_V0_1_0 = CommandToolBuilder(tool="ht_protocol_finder.pl", base_command=["ht_protocol_finder.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ht_Protocol_Finder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

