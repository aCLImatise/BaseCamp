from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Pipits_Getsamplelistfromfasta_V0_1_0 = CommandToolBuilder(tool="pipits_getsamplelistfromfasta", base_command=["pipits_getsamplelistfromfasta"], inputs=[ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_creates", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequences_dot", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipits_Getsamplelistfromfasta_V0_1_0().translate("wdl", allow_empty_container=True)

