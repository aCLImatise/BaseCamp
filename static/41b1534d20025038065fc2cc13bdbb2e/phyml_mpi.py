from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phyml_Mpi_V0_1_0 = CommandToolBuilder(tool="phyml_mpi", base_command=["phyml-mpi"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyml_Mpi_V0_1_0().translate("wdl", allow_empty_container=True)

