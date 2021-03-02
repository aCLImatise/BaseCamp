from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Reportthresholdcoverage_V0_1_0 = CommandToolBuilder(tool="ReportThresholdCoverage", base_command=["ReportThresholdCoverage"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools."))], outputs=[], container="quay.io/biocontainers/gridss:2.10.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reportthresholdcoverage_V0_1_0().translate("wdl")

