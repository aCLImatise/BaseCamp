from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Conpairs_V0_1_0 = CommandToolBuilder(tool="ConPairs", base_command=["ConPairs"], inputs=[ToolInput(tag="in_axt", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/kakscalculator2:2.0.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Conpairs_V0_1_0().translate("wdl")

