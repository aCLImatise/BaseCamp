from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Scramblefasta_Pl_V0_1_0 = CommandToolBuilder(tool="scrambleFasta.pl", base_command=["scrambleFasta.pl"], inputs=[ToolInput(tag="in_number_scrambled_output", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="<#> (Number of scrambled output sequences, defulat: 5x input)")), ToolInput(tag="in_input_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scramblefasta_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

