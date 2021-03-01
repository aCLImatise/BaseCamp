from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Commandline_Pdb_V0_1_0 = CommandToolBuilder(tool="CommandLine.pdb", base_command=["CommandLine.pdb"], inputs=[], outputs=[], container="quay.io/biocontainers/morpheus:287--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Commandline_Pdb_V0_1_0().translate("wdl")

