from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prinseq_Graphs_Pl_V0_1_0 = CommandToolBuilder(tool="prinseq_graphs.pl", base_command=["prinseq-graphs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prinseq_Graphs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

