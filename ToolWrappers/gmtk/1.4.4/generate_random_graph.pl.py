from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Generate_Random_Graph_Pl_V0_1_0 = CommandToolBuilder(tool="generate_random_graph.pl", base_command=["generate_random_graph.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Random_Graph_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

