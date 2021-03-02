from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Buildg_Mpi_V0_1_0 = CommandToolBuilder(tool="buildG_MPI", base_command=["buildG-MPI"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Buildg_Mpi_V0_1_0().translate("wdl", allow_empty_container=True)

