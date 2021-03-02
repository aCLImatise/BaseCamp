from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Weight_Updated_Graph_Py_V0_1_0 = CommandToolBuilder(tool="weight_updated_graph.py", base_command=["weight_updated_graph.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Weight_Updated_Graph_Py_V0_1_0().translate("wdl", allow_empty_container=True)

