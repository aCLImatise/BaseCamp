from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Metrics_Args_V0_1_0 = CommandToolBuilder(tool="arrow_metrics_ARGS", base_command=["arrow", "metrics", "ARGS"], inputs=[ToolInput(tag="in_arrow", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_metrics", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Metrics_Args_V0_1_0().translate("wdl")

