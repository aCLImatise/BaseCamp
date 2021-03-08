from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Visualizeclonetree_V0_1_0 = CommandToolBuilder(tool="visualizeclonetree", base_command=["visualizeclonetree"], inputs=[ToolInput(tag="in_color_map_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Color map file")), ToolInput(tag="in_vertex_labeling", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="Vertex labeling\n")), ToolInput(tag="in_leaf_labeling", input_type=String(), position=0, doc=InputDocumentation(doc="Leaf labeling"))], outputs=[], container="quay.io/biocontainers/machina:1.2--h176a8bc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Visualizeclonetree_V0_1_0().translate("wdl")

