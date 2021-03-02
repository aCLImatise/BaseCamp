from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blastdb_Path_V0_1_0 = CommandToolBuilder(tool="blastdb_path", base_command=["blastdb_path"], inputs=[], outputs=[], container="quay.io/biocontainers/rmblast:2.10.0--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blastdb_Path_V0_1_0().translate("wdl")

