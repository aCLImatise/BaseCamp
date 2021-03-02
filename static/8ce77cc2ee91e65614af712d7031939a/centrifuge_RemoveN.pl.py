from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Centrifuge_Removen_Pl_V0_1_0 = CommandToolBuilder(tool="centrifuge_RemoveN.pl", base_command=["centrifuge-RemoveN.pl"], inputs=[ToolInput(tag="in_a_dot_pl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_xxx_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Centrifuge_Removen_Pl_V0_1_0().translate("wdl")

