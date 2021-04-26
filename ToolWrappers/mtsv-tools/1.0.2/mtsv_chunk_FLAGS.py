from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mtsv_Chunk_Flags_V0_1_0 = CommandToolBuilder(tool="mtsv_chunk_FLAGS", base_command=["mtsv-chunk", "FLAGS"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mtsv-tools:1.0.2--h779adbc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mtsv_Chunk_Flags_V0_1_0().translate("wdl")

