from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cooler_Mv_V0_1_0 = CommandToolBuilder(tool="cooler_mv", base_command=["cooler", "mv"], inputs=[ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Truncate and replace destination file if it already exists.")), ToolInput(tag="in_src_uri", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dst_uri", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Mv_V0_1_0().translate("wdl")

