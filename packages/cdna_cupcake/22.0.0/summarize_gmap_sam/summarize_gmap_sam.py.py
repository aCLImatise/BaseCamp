from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Summarize_Gmap_Sam_Py_V0_1_0 = CommandToolBuilder(tool="summarize_gmap_sam.py", base_command=["summarize_gmap_sam.py"], inputs=[ToolInput(tag="in_summarize", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gmap", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sam", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_tab_delimited", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot", input_type=File(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summarize_Gmap_Sam_Py_V0_1_0().translate("wdl")

