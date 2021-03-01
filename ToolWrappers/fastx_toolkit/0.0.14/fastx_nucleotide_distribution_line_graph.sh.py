from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastx_Nucleotide_Distribution_Line_Graph_Sh_V0_1_0 = CommandToolBuilder(tool="fastx_nucleotide_distribution_line_graph.sh", base_command=["fastx_nucleotide_distribution_line_graph.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastx_Nucleotide_Distribution_Line_Graph_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

