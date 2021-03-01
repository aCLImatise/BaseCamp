from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Sga_Graph_Concordance_V0_1_0 = CommandToolBuilder(tool="sga_graph_concordance", base_command=["sga", "graph-concordance"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="load the reference genome from FILE")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM threads to compute the overlaps (default: 1)")), ToolInput(tag="in_germline", input_type=File(optional=True), prefix="--germline", doc=InputDocumentation(doc="load germline variants from FILE"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Graph_Concordance_V0_1_0().translate("wdl", allow_empty_container=True)

