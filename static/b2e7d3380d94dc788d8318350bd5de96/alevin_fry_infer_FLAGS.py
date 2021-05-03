from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Alevin_Fry_Infer_Flags_V0_1_0 = CommandToolBuilder(tool="alevin_fry_infer_FLAGS", base_command=["alevin-fry", "infer", "FLAGS"], inputs=[ToolInput(tag="in_eq_labels", input_type=String(optional=True), prefix="--eq-labels", doc=InputDocumentation(doc="")), ToolInput(tag="in_count_mat", input_type=String(optional=True), prefix="--count-mat", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alevin_Fry_Infer_Flags_V0_1_0().translate("wdl")

