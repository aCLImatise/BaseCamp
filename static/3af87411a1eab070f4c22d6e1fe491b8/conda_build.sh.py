from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Conda_Build_Sh_V0_1_0 = CommandToolBuilder(tool="conda_build.sh", base_command=["conda_build.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Conda_Build_Sh_V0_1_0().translate("wdl")

