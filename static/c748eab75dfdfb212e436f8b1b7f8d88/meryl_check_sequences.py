from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Meryl_Check_Sequences_V0_1_0 = CommandToolBuilder(tool="meryl_check_sequences", base_command=["meryl-check", "sequences"], inputs=[ToolInput(tag="in_unknown", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meryl:1.2--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meryl_Check_Sequences_V0_1_0().translate("wdl")

