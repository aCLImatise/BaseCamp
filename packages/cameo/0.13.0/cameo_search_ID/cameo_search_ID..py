from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cameo_Search_Id__V0_1_0 = CommandToolBuilder(tool="cameo_search_ID.", base_command=["cameo", "search", "ID."], inputs=[ToolInput(tag="in_cameo", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_search", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_product", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cameo:0.13.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cameo_Search_Id__V0_1_0().translate("wdl")

