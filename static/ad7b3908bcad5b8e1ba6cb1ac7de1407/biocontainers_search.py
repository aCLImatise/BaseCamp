from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Biocontainers_Search_V0_1_0 = CommandToolBuilder(tool="biocontainers_search", base_command=["biocontainers-search"], inputs=[ToolInput(tag="in_search_term", input_type=String(optional=True), prefix="--search_term", doc=InputDocumentation(doc="Search term")), ToolInput(tag="in_json", input_type=Boolean(optional=True), prefix="--json", doc=InputDocumentation(doc="Print json format")), ToolInput(tag="in_show_images", input_type=Boolean(optional=True), prefix="--show_images", doc=InputDocumentation(doc="Show all available images")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bioconda2biocontainer:0.0.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biocontainers_Search_V0_1_0().translate("wdl")

