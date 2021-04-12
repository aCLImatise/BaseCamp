from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Data_Norm_V0_1_0 = CommandToolBuilder(tool="data_norm", base_command=["data_norm"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="normalization method (default: upqt)"))], outputs=[], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Data_Norm_V0_1_0().translate("wdl")

