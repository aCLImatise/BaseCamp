from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Sketchy_Rs_Evaluate_V0_1_0 = CommandToolBuilder(tool="sketchy_rs_evaluate", base_command=["sketchy-rs", "evaluate"], inputs=[ToolInput(tag="in_features", input_type=File(optional=True), prefix="--features", doc=InputDocumentation(doc="genotype feature index")), ToolInput(tag="in_stable", input_type=Int(optional=True), prefix="--stable", doc=InputDocumentation(doc="reads to stable breakpoint")), ToolInput(tag="in_sketchy_rs", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Rs_Evaluate_V0_1_0().translate("wdl")

