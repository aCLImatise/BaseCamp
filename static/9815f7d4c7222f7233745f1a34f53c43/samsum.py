from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Samsum_V0_1_0 = CommandToolBuilder(tool="samsum", base_command=["samsum"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/samsum:0.1.4--py38h5d069a8_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samsum_V0_1_0().translate("wdl")

