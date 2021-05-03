from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Alevin_Fry_Quant_Flags_V0_1_0 = CommandToolBuilder(tool="alevin_fry_quant_FLAGS", base_command=["alevin-fry", "quant", "FLAGS"], inputs=[ToolInput(tag="in_tg_map", input_type=String(optional=True), prefix="--tg-map", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dir", input_type=String(optional=True), prefix="--input-dir", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alevin_Fry_Quant_Flags_V0_1_0().translate("wdl")

