from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dnachisel_V0_1_0 = CommandToolBuilder(tool="dnachisel", base_command=["dnachisel"], inputs=[ToolInput(tag="in_circular", input_type=Boolean(optional=True), prefix="--circular", doc=InputDocumentation(doc="")), ToolInput(tag="in_source", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_target", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dnachisel:3.2.6--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnachisel_V0_1_0().translate("wdl")

