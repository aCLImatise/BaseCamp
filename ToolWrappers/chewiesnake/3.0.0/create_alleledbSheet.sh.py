from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Create_Alleledbsheet_Sh_V0_1_0 = CommandToolBuilder(tool="create_alleledbSheet.sh", base_command=["create_alleledbSheet.sh"], inputs=[ToolInput(tag="in_interactive", input_type=String(optional=True), prefix="--interactive", doc=InputDocumentation(doc="before execution")), ToolInput(tag="in_force", input_type=String(optional=True), prefix="--force", doc=InputDocumentation(doc="database"))], outputs=[], container="quay.io/biocontainers/chewiesnake:3.0.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Alleledbsheet_Sh_V0_1_0().translate("wdl")

