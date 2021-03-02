from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Get_Seqs_From_List_Py_V0_1_0 = CommandToolBuilder(tool="get_seqs_from_list.py", base_command=["get_seqs_from_list.py"], inputs=[ToolInput(tag="in_partial", input_type=Boolean(optional=True), prefix="--partial", doc=InputDocumentation(doc="OK if seq IDs only match the beginning")), ToolInput(tag="in_exclude", input_type=Boolean(optional=True), prefix="--exclude", doc=InputDocumentation(doc="Output sequences NOT in the list, default OFF")), ToolInput(tag="in_list_filename", input_type=String(), position=1, doc=InputDocumentation(doc="List of sequence IDs to extract"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Seqs_From_List_Py_V0_1_0().translate("wdl")

