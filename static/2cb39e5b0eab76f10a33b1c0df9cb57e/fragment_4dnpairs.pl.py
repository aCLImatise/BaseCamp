from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fragment_4Dnpairs_Pl_V0_1_0 = CommandToolBuilder(tool="fragment_4dnpairs.pl", base_command=["fragment_4dnpairs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fragment_4Dnpairs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

