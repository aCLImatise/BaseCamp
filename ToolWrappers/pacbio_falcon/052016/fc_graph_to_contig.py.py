from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fc_Graph_To_Contig_Py_V0_1_0 = CommandToolBuilder(tool="fc_graph_to_contig.py", base_command=["fc_graph_to_contig.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Graph_To_Contig_Py_V0_1_0().translate("wdl", allow_empty_container=True)

