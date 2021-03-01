from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

_Hiline_Aligner_V0_1_0 = CommandToolBuilder(tool="_HiLine_Aligner", base_command=["_HiLine_Aligner"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="RANGE"))], outputs=[], container="quay.io/biocontainers/hiline:0.2.1--py38hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Hiline_Aligner_V0_1_0().translate("wdl")

