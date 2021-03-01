from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bedtools_Summary_V0_1_0 = CommandToolBuilder(tool="bedtools_summary", base_command=["bedtools", "summary"], inputs=[ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Summary_V0_1_0().translate("wdl")

