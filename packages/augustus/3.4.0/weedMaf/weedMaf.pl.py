from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Weedmaf_Pl_V0_1_0 = CommandToolBuilder(tool="weedMaf.pl", base_command=["weedMaf.pl"], inputs=[ToolInput(tag="in_format", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Weedmaf_Pl_V0_1_0().translate("wdl")

