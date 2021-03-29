from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chewie_V0_1_0 = CommandToolBuilder(tool="chewie", base_command=["chewie"], inputs=[ToolInput(tag="in_chewbbacadotpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_module", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/chewbbaca:2.7.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chewie_V0_1_0().translate("wdl")

