from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Get_Seq_Stats_Py_V0_1_0 = CommandToolBuilder(tool="get_seq_stats.py", base_command=["get_seq_stats.py"], inputs=[ToolInput(tag="in_summarize", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_lengths", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Seq_Stats_Py_V0_1_0().translate("wdl")

