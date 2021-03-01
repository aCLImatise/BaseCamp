from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lordec_Build_Sr_Graph_V0_1_0 = CommandToolBuilder(tool="lordec_build_SR_graph", base_command=["lordec-build-SR-graph"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lordec_Build_Sr_Graph_V0_1_0().translate("wdl", allow_empty_container=True)

