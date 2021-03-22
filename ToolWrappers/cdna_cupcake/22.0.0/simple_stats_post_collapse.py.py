from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Simple_Stats_Post_Collapse_Py_V0_1_0 = CommandToolBuilder(tool="simple_stats_post_collapse.py", base_command=["simple_stats_post_collapse.py"], inputs=[ToolInput(tag="in_input_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="Input prefix, ex: hq.5merge.collapsed"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simple_Stats_Post_Collapse_Py_V0_1_0().translate("wdl")

