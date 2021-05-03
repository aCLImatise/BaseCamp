from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rustyread_Simulate_Flags_V0_1_0 = CommandToolBuilder(tool="rustyread_simulate_FLAGS", base_command=["rustyread", "simulate", "FLAGS"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/rustyread:0.3--h82fb495_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rustyread_Simulate_Flags_V0_1_0().translate("wdl")

