from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Mglex_Cli_Evaluate_V0_1_0 = CommandToolBuilder(tool="mglex_cli_evaluate", base_command=["mglex-cli", "evaluate"], inputs=[ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="Likelihood matrix; default standard input")), ToolInput(tag="in_responsibility", input_type=File(optional=True), prefix="--responsibility", doc=InputDocumentation(doc="Responsibility (weight) matrix file")), ToolInput(tag="in_weight", input_type=File(optional=True), prefix="--weight", doc=InputDocumentation(doc="Weights (sequence length) file")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Evaluation method; one of 'mse', 'mse-flex',\n'co-clustering', 'separation'")), ToolInput(tag="in_subsample", input_type=Int(optional=True), prefix="--subsample", doc=InputDocumentation(doc="Subsample this number of data points for faster calculation")), ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="Seed for random operations")), ToolInput(tag="in_fromtostep__fromtostep", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="<from(:to:step)>, --beta <from(:to:step)>  Beta correction factor(s) to evaluate; default 1.0")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_cluster_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Method 'separation':"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglex_Cli_Evaluate_V0_1_0().translate("wdl", allow_empty_container=True)

