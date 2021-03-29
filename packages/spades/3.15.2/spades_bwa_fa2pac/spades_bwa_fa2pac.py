from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Spades_Bwa_Fa2Pac_V0_1_0 = CommandToolBuilder(tool="spades_bwa_fa2pac", base_command=["spades-bwa", "fa2pac"], inputs=[ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_bwa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fa_two_pac", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fast_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_prefix", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/spades:3.15.2--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Bwa_Fa2Pac_V0_1_0().translate("wdl")

