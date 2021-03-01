from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Extract_Promoter_Regions_Py_V0_1_0 = CommandToolBuilder(tool="extract_promoter_regions.py", base_command=["extract_promoter_regions.py"], inputs=[ToolInput(tag="in_little", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_script", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_extract", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_promoter", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_regions", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_genes_dot", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Promoter_Regions_Py_V0_1_0().translate("wdl")

