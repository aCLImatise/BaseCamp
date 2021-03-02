from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Annotate_V0_1_0 = CommandToolBuilder(tool="annotate", base_command=["annotate"], inputs=[ToolInput(tag="in_gap_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_data_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotate_V0_1_0().translate("wdl")

