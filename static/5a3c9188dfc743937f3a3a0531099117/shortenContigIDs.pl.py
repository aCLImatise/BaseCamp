from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Shortencontigids_Pl_V0_1_0 = CommandToolBuilder(tool="shortenContigIDs.pl", base_command=["shortenContigIDs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shortencontigids_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

