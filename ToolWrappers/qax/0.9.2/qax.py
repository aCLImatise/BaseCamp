from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Qax_V0_1_0 = CommandToolBuilder(tool="qax", base_command=["qax"], inputs=[ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/qax:0.9.2--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qax_V0_1_0().translate("wdl")

