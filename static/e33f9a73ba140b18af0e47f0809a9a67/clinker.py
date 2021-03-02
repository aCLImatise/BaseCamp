from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Clinker_V0_1_0 = CommandToolBuilder(tool="clinker", base_command=["clinker"], inputs=[ToolInput(tag="in_w", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="")), ToolInput(tag="in_h", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="")), ToolInput(tag="in_run", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/clinker:1.32--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clinker_V0_1_0().translate("wdl")

