from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Awssdk_Core_Pdb_V0_1_0 = CommandToolBuilder(tool="AWSSDK.Core.pdb", base_command=["AWSSDK.Core.pdb"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Awssdk_Core_Pdb_V0_1_0().translate("wdl")

