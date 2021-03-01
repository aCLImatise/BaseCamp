from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bwa_Fa2Pac_V0_1_0 = CommandToolBuilder(tool="bwa_fa2pac", base_command=["bwa", "fa2pac"], inputs=[ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_prefix", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Fa2Pac_V0_1_0().translate("wdl", allow_empty_container=True)

