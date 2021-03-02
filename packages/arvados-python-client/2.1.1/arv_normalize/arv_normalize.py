from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Arv_Normalize_V0_1_0 = CommandToolBuilder(tool="arv_normalize", base_command=["arv-normalize"], inputs=[ToolInput(tag="in_extract", input_type=File(optional=True), prefix="--extract", doc=InputDocumentation(doc="The file to extract from the input manifest")), ToolInput(tag="in_strip", input_type=Boolean(optional=True), prefix="--strip", doc=InputDocumentation(doc="Strip authorization tokens"))], outputs=[], container="quay.io/biocontainers/arvados-python-client:2.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arv_Normalize_V0_1_0().translate("wdl")

