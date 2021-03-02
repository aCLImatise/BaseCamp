from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, String, File

Create_Priors_V0_1_0 = CommandToolBuilder(tool="create_priors", base_command=["create-priors"], inputs=[ToolInput(tag="in_alpha", input_type=Float(optional=True), prefix="--alpha", doc=InputDocumentation(doc="(default 1.0)")), ToolInput(tag="in_beta", input_type=Float(optional=True), prefix="--beta", doc=InputDocumentation(doc="(default 10000.0)")), ToolInput(tag="in_num_bins", input_type=Int(optional=True), prefix="--num-bins", doc=InputDocumentation(doc="(default 100)")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="--o", doc=InputDocumentation(doc="(default=createpriors_out)")), ToolInput(tag="in_oc", input_type=String(optional=True), prefix="--oc", doc=InputDocumentation(doc="(default=createpriors_out)")), ToolInput(tag="in_fast_a_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_wiggle_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Priors_V0_1_0().translate("wdl")

