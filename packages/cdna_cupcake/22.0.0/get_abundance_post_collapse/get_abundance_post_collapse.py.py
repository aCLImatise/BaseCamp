from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Get_Abundance_Post_Collapse_Py_V0_1_0 = CommandToolBuilder(tool="get_abundance_post_collapse.py", base_command=["get_abundance_post_collapse.py"], inputs=[ToolInput(tag="in_collapse_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="Collapse prefix (must have .group.txt)")), ToolInput(tag="in_cluster_report", input_type=String(), position=1, doc=InputDocumentation(doc="Cluster CSV report"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Abundance_Post_Collapse_Py_V0_1_0().translate("wdl")

