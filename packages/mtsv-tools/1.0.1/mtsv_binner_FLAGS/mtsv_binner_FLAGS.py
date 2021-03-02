from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mtsv_Binner_Flags_V0_1_0 = CommandToolBuilder(tool="mtsv_binner_FLAGS", base_command=["mtsv-binner", "FLAGS"], inputs=[ToolInput(tag="in_fast_a", input_type=String(optional=True), prefix="--fasta", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mtsv_Binner_Flags_V0_1_0().translate("wdl", allow_empty_container=True)

