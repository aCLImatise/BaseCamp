from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Cluster2Bedgraph_Pl_V0_1_0 = CommandToolBuilder(tool="cluster2bedgraph.pl", base_command=["cluster2bedgraph.pl"], inputs=[ToolInput(tag="in_cluster_distance_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_res", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cluster2Bedgraph_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

