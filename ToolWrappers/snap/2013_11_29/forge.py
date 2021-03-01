from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Forge_V0_1_0 = CommandToolBuilder(tool="forge", base_command=["forge"], inputs=[ToolInput(tag="in_boost", input_type=File(optional=True), prefix="-boost", doc=InputDocumentation(doc="(file of ID <int>)")), ToolInput(tag="in_ann", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dna", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Forge_V0_1_0().translate("wdl", allow_empty_container=True)

