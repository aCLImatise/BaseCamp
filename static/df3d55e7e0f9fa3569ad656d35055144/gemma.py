from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gemma_V0_1_0 = CommandToolBuilder(tool="gemma", base_command=["gemma"], inputs=[ToolInput(tag="in_license", input_type=Boolean(optional=True), prefix="-license", doc=InputDocumentation(doc="show license information"))], outputs=[], container="quay.io/biocontainers/gemma:0.98.3--hb4ccc14_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gemma_V0_1_0().translate("wdl")

