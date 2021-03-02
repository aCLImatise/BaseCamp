from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blobtools_Build_Nodesdb_V0_1_0 = CommandToolBuilder(tool="blobtools_build_nodesdb", base_command=["blobtools-build_nodesdb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blobtools_Build_Nodesdb_V0_1_0().translate("wdl", allow_empty_container=True)

