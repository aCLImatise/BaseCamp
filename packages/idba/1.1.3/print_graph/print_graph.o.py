from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Print_Graph_O_V0_1_0 = CommandToolBuilder(tool="print_graph.o", base_command=["print_graph.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Print_Graph_O_V0_1_0().translate("wdl", allow_empty_container=True)

