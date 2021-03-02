from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Combine_Assembled_Files_Sh_V0_1_0 = CommandToolBuilder(tool="combine_assembled_files.sh", base_command=["combine-assembled-files.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combine_Assembled_Files_Sh_V0_1_0().translate("wdl")

