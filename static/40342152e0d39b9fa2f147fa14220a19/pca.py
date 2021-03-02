from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Pca_V0_1_0 = CommandToolBuilder(tool="pca", base_command=["pca"], inputs=[ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_must", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_all", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_be", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_specified", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pca_V0_1_0().translate("wdl", allow_empty_container=True)

