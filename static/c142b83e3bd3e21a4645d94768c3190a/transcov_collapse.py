from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Transcov_Collapse_V0_1_0 = CommandToolBuilder(tool="transcov_collapse", base_command=["transcov", "collapse"], inputs=[ToolInput(tag="in_matrices", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transcov_Collapse_V0_1_0().translate("wdl", allow_empty_container=True)

