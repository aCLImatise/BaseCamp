from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vg_V0_1_0 = CommandToolBuilder(tool="vg", base_command=["vg"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vg:1.30.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vg_V0_1_0().translate("wdl")

