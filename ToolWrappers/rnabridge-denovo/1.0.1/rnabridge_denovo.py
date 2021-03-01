from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Rnabridge_Denovo_V0_1_0 = CommandToolBuilder(tool="rnabridge_denovo", base_command=["rnabridge-denovo"], inputs=[ToolInput(tag="in_input_read_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_read_two", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_bridge_sequence", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/rnabridge-denovo:1.0.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnabridge_Denovo_V0_1_0().translate("wdl")

