from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Knot_Path_Search_Search_V0_1_0 = CommandToolBuilder(tool="knot.path_search_search", base_command=["knot.path_search", "search"], inputs=[ToolInput(tag="in_self_lookup", input_type=Boolean(optional=True), prefix="--self-lookup", doc=InputDocumentation(doc="")), ToolInput(tag="in_search_mode", input_type=String(optional=True), prefix="--search-mode", doc=InputDocumentation(doc="")), ToolInput(tag="in_knot_dot_path_search", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knot_Path_Search_Search_V0_1_0().translate("wdl")

