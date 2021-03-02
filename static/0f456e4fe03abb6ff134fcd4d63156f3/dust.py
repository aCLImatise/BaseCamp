from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dust_V0_1_0 = CommandToolBuilder(tool="dust", base_command=["dust"], inputs=[ToolInput(tag="in_fast_a_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cut_off", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dust_V0_1_0().translate("wdl")

