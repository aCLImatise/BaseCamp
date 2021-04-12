from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Aws_Logger_Core_Pdb_V0_1_0 = CommandToolBuilder(tool="AWS.Logger.Core.pdb", base_command=["AWS.Logger.Core.pdb"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aws_Logger_Core_Pdb_V0_1_0().translate("wdl")

