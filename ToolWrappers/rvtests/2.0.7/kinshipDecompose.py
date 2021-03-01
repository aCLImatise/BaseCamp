from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Kinshipdecompose_V0_1_0 = CommandToolBuilder(tool="kinshipDecompose", base_command=["kinshipDecompose"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="--in", doc=InputDocumentation(doc=": Input kinship file")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc=": Output prefix for autosomal kinship calculation"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kinshipdecompose_V0_1_0().translate("wdl", allow_empty_container=True)

