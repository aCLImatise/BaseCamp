from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Poppunk_Add_Weights_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_add_weights.py", base_command=["poppunk_add_weights.py"], inputs=[ToolInput(tag="in_graph_ml", input_type=Boolean(optional=True), prefix="--graphml", doc=InputDocumentation(doc="")), ToolInput(tag="in_add_weights", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_graph", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_distances", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Add_Weights_Py_V0_1_0().translate("wdl")

