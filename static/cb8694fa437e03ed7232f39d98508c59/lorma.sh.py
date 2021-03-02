from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lorma_Sh_V0_1_0 = CommandToolBuilder(tool="lorma.sh", base_command=["lorma.sh"], inputs=[ToolInput(tag="in_sequence_data_intermediate", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="the sequence data of intermediate LoRDEC steps")), ToolInput(tag="in_lordec_steps", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="LoRDEC steps"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lorma_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

