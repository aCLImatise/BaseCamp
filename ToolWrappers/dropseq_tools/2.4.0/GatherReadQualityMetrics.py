from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Gatherreadqualitymetrics_V0_1_0 = CommandToolBuilder(tool="GatherReadQualityMetrics", base_command=["GatherReadQualityMetrics"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_value_dot", input_type=String(), position=0, doc=InputDocumentation(doc="TAG=String                    Optionally aggregate reads by a tag and output per-tag metrics.  The map quality scores"))], outputs=[], container="quay.io/biocontainers/dropseq_tools:2.4.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gatherreadqualitymetrics_V0_1_0().translate("wdl")

