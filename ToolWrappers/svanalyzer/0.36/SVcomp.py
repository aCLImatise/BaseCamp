from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Svcomp_V0_1_0 = CommandToolBuilder(tool="SVcomp", base_command=["SVcomp"], inputs=[ToolInput(tag="in_first", input_type=File(optional=True), prefix="--first", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svcomp_V0_1_0().translate("wdl", allow_empty_container=True)

