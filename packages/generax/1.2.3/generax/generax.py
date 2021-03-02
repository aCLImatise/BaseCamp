from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Generax_V0_1_0 = CommandToolBuilder(tool="generax", base_command=["generax"], inputs=[ToolInput(tag="in_rec_model", input_type=String(optional=True), prefix="--rec-model", doc=InputDocumentation(doc="{UndatedDL, UndatedDTL, Auto}"))], outputs=[], container="quay.io/biocontainers/generax:1.2.3--h78e549b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generax_V0_1_0().translate("wdl")

