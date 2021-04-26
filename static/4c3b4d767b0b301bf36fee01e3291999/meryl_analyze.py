from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Meryl_Analyze_V0_1_0 = CommandToolBuilder(tool="meryl_analyze", base_command=["meryl-analyze"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="-prefix", doc=InputDocumentation(doc="")), ToolInput(tag="in_mers", input_type=String(optional=True), prefix="-mers", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meryl:1.3--h1b792b2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meryl_Analyze_V0_1_0().translate("wdl")

