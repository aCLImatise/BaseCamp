from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makegraph_R__V0_1_0 = CommandToolBuilder(tool="makeGraph.R~", base_command=["makeGraph.R~"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makegraph_R__V0_1_0().translate("wdl", allow_empty_container=True)

