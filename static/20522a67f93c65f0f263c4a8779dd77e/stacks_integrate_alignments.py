from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Stacks_Integrate_Alignments_V0_1_0 = CommandToolBuilder(tool="stacks_integrate_alignments", base_command=["stacks-integrate-alignments"], inputs=[ToolInput(tag="in_b", input_type=File(optional=True), prefix="-B", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-P", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stacks_Integrate_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

