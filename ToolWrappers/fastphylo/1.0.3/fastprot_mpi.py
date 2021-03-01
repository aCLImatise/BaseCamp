from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastprot_Mpi_V0_1_0 = CommandToolBuilder(tool="fastprot_mpi", base_command=["fastprot_mpi"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastprot_Mpi_V0_1_0().translate("wdl", allow_empty_container=True)

