from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Splitsam_Sh_V0_1_0 = CommandToolBuilder(tool="splitsam.sh", base_command=["splitsam.sh"], inputs=[ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_plus_output", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_minus_output", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_unmapped_output", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitsam_Sh_V0_1_0().translate("wdl")

