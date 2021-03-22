from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Treesapp_V0_1_0 = CommandToolBuilder(tool="treesapp", base_command=["treesapp"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/treesapp:0.10.2--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treesapp_V0_1_0().translate("wdl")

