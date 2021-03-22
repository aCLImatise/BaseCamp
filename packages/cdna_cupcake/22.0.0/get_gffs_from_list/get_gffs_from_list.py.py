from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Get_Gffs_From_List_Py_V0_1_0 = CommandToolBuilder(tool="get_gffs_from_list.py", base_command=["get_gffs_from_list.py"], inputs=[ToolInput(tag="in_partial", input_type=Boolean(optional=True), prefix="--partial", doc=InputDocumentation(doc="")), ToolInput(tag="in_get", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_records", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_list", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Gffs_From_List_Py_V0_1_0().translate("wdl")

