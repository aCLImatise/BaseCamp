from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Gnuplot_Graph_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="make_gnuplot_graph.pl.bak", base_command=["make_gnuplot_graph.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Gnuplot_Graph_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

