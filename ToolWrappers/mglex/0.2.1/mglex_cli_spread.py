from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Mglex_Cli_Spread_V0_1_0 = CommandToolBuilder(tool="mglex_cli_spread", base_command=["mglex-cli", "spread"], inputs=[ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="Feature matrix; default standard input")), ToolInput(tag="in_responsibility", input_type=File(optional=True), prefix="--responsibility", doc=InputDocumentation(doc="Responsibility (weight) matrix file")), ToolInput(tag="in_weight", input_type=File(optional=True), prefix="--weight", doc=InputDocumentation(doc="Weights (sequence length) file for normalization")), ToolInput(tag="in_precision", input_type=Int(optional=True), prefix="--precision", doc=InputDocumentation(doc="Output precision; default 2")), ToolInput(tag="in_normalize", input_type=Boolean(optional=True), prefix="--normalize", doc=InputDocumentation(doc="Report (weighted) average instead of sum")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_spread", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglex_Cli_Spread_V0_1_0().translate("wdl", allow_empty_container=True)

