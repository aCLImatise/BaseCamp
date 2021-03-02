from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Uvaialign_V0_1_0 = CommandToolBuilder(tool="uvaialign", base_command=["uvaialign"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="reference sequence"))], outputs=[], container="quay.io/biocontainers/uvaia:1.0.0--hbcae180_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uvaialign_V0_1_0().translate("wdl")

