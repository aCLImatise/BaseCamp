from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Auspice_V0_1_0 = CommandToolBuilder(tool="auspice", base_command=["auspice"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/auspice:2.23.0--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Auspice_V0_1_0().translate("wdl")

