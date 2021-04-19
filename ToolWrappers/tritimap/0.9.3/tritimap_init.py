from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Tritimap_Init_V0_1_0 = CommandToolBuilder(tool="tritimap_init", base_command=["tritimap", "init"], inputs=[ToolInput(tag="in_working_dir", input_type=File(optional=True), prefix="--working-dir", doc=InputDocumentation(doc="Triti-Map running directory."))], outputs=[], container="quay.io/biocontainers/tritimap:0.9.3--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tritimap_Init_V0_1_0().translate("wdl")

