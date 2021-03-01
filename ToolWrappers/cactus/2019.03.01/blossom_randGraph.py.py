from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Float

Blossom_Randgraph_Py_V0_1_0 = CommandToolBuilder(tool="blossom_randGraph.py", base_command=["blossom_randGraph.py"], inputs=[ToolInput(tag="in_number_vertices_graphnote", input_type=Int(optional=True), prefix="-N", doc=InputDocumentation(doc="is the number of vertices in graph\nNote: N must be even and an integer")), ToolInput(tag="in_is_probability_edge", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="is the probability of an edge")), ToolInput(tag="in_weight_edge_uniformw", input_type=Float(optional=True), prefix="-w", doc=InputDocumentation(doc="is the weight of the edge, uniform(-w, w)\nDefault values are: N=1000, p=1.0, w=5"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blossom_Randgraph_Py_V0_1_0().translate("wdl", allow_empty_container=True)

