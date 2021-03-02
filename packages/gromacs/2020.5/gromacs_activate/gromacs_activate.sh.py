from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gromacs_Activate_Sh_V0_1_0 = CommandToolBuilder(tool="gromacs_activate.sh", base_command=["gromacs_activate.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/gromacs:2020.5--h3ddc34e_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gromacs_Activate_Sh_V0_1_0().translate("wdl")

