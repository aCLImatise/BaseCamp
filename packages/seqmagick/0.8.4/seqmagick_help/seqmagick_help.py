from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Seqmagick_Help_V0_1_0 = CommandToolBuilder(tool="seqmagick_help", base_command=["seqmagick", "help"], inputs=[ToolInput(tag="in_action", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/seqmagick:0.8.4--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqmagick_Help_V0_1_0().translate("wdl")

