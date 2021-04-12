from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Awssdk_S3_Pdb_V0_1_0 = CommandToolBuilder(tool="AWSSDK.S3.pdb", base_command=["AWSSDK.S3.pdb"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Awssdk_S3_Pdb_V0_1_0().translate("wdl")

