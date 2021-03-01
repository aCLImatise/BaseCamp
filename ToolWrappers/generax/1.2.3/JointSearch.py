from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Jointsearch_V0_1_0 = CommandToolBuilder(tool="JointSearch", base_command=["JointSearch"], inputs=[ToolInput(tag="in_rec_model", input_type=String(optional=True), prefix="--rec-model", doc=InputDocumentation(doc="{UndatedDL, UndatedDTL}")), ToolInput(tag="in_rec_opt", input_type=String(optional=True), prefix="--rec-opt", doc=InputDocumentation(doc="{grid, simplex}")), ToolInput(tag="in_lib_pll_model", input_type=String(optional=True), prefix="--libpll-model", doc=InputDocumentation(doc="{GTR, LG, DAYHOFF etc.}"))], outputs=[], container="quay.io/biocontainers/generax:1.2.3--h78e549b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jointsearch_V0_1_0().translate("wdl")

