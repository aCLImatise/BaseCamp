from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Makegraph_Chromosome_R_V0_1_0 = CommandToolBuilder(tool="_makeGraph_Chromosome.R", base_command=["_makeGraph_Chromosome.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Makegraph_Chromosome_R_V0_1_0().translate("wdl", allow_empty_container=True)

