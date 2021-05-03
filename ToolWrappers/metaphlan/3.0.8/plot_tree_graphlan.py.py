from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Tree_Graphlan_Py_V0_1_0 = CommandToolBuilder(tool="plot_tree_graphlan.py", base_command=["plot_tree_graphlan.py"], inputs=[], outputs=[], container="quay.io/biocontainers/metaphlan:3.0.8--pyhb7b1952_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Tree_Graphlan_Py_V0_1_0().translate("wdl")

