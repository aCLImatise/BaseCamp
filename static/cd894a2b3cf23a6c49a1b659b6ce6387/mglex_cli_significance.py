from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mglex_Cli_Significance_V0_1_0 = CommandToolBuilder(tool="mglex_cli_significance", base_command=["mglex-cli", "significance"], inputs=[ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="Log-likelihood matrix for which to calculate p-values; default standard input")), ToolInput(tag="in_weight", input_type=File(optional=True), prefix="--weight", doc=InputDocumentation(doc="Weights (sequence length) file")), ToolInput(tag="in_null_data", input_type=File(optional=True), prefix="--nulldata", doc=InputDocumentation(doc="Log-likelihood matrix with reference (null hypothesis) values")), ToolInput(tag="in_responsibility", input_type=File(optional=True), prefix="--responsibility", doc=InputDocumentation(doc="Log-likelihood responsibility matrix")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_significance", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglex_Cli_Significance_V0_1_0().translate("wdl", allow_empty_container=True)

