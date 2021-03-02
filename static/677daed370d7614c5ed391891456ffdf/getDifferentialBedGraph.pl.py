from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getdifferentialbedgraph_Pl_V0_1_0 = CommandToolBuilder(tool="getDifferentialBedGraph.pl", base_command=["getDifferentialBedGraph.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getdifferentialbedgraph_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

