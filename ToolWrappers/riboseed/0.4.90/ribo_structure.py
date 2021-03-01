from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ribo_Structure_V0_1_0 = CommandToolBuilder(tool="ribo_structure", base_command=["ribo", "structure"], inputs=[ToolInput(tag="in_k", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribo_Structure_V0_1_0().translate("wdl", allow_empty_container=True)

