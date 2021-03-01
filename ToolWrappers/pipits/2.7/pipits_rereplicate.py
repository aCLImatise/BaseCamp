from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pipits_Rereplicate_V0_1_0 = CommandToolBuilder(tool="pipits_rereplicate", base_command=["pipits_rereplicate"], inputs=[ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="[REQUIRED]")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="[REQUIRED]")), ToolInput(tag="in_uc", input_type=File(optional=True), prefix="--uc", doc=InputDocumentation(doc="[REQUIRED] uc file from VSEARCH")), ToolInput(tag="in_re_replicate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequences_dot", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipits_Rereplicate_V0_1_0().translate("wdl", allow_empty_container=True)

