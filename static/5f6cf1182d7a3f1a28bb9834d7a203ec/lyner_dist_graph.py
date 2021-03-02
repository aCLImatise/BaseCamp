from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lyner_Dist_Graph_V0_1_0 = CommandToolBuilder(tool="lyner_dist_graph", base_command=["lyner", "dist-graph"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Dist_Graph_V0_1_0().translate("wdl", allow_empty_container=True)

