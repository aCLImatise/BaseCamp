from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Collectgridssmetrics_V0_1_0 = CommandToolBuilder(tool="CollectGridssMetrics", base_command=["CollectGridssMetrics"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_times_dot", input_type=String(), position=0, doc=InputDocumentation(doc="INCLUDE_UNPAIRED=Boolean"))], outputs=[], container="quay.io/biocontainers/gridss:2.11.1--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collectgridssmetrics_V0_1_0().translate("wdl")

