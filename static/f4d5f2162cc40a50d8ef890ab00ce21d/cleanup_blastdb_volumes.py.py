from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cleanup_Blastdb_Volumes_Py_V0_1_0 = CommandToolBuilder(tool="cleanup_blastdb_volumes.py", base_command=["cleanup-blastdb-volumes.py"], inputs=[], outputs=[], container="quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cleanup_Blastdb_Volumes_Py_V0_1_0().translate("wdl")

