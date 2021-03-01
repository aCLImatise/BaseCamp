from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Db_Graph_Jl_V0_1_0 = CommandToolBuilder(tool="db_graph.jl", base_command=["db_graph.jl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Db_Graph_Jl_V0_1_0().translate("wdl", allow_empty_container=True)

