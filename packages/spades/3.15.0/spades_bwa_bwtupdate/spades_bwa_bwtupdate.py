from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Spades_Bwa_Bwtupdate_V0_1_0 = CommandToolBuilder(tool="spades_bwa_bwtupdate", base_command=["spades-bwa", "bwtupdate"], inputs=[ToolInput(tag="in_bwa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bwt_update", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_the_dot_bwt", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/spades:3.15.0--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Bwa_Bwtupdate_V0_1_0().translate("wdl")

