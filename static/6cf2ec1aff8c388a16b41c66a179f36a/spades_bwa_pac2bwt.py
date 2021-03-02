from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Spades_Bwa_Pac2Bwt_V0_1_0 = CommandToolBuilder(tool="spades_bwa_pac2bwt", base_command=["spades-bwa", "pac2bwt"], inputs=[ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_bwa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pac_two_bwt", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_pac", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_bwt", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/spades:3.15.0--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Bwa_Pac2Bwt_V0_1_0().translate("wdl")

