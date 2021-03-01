from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Prepgen_V0_1_0 = CommandToolBuilder(tool="prepgen", base_command=["prepgen"], inputs=[ToolInput(tag="in_rn", input_type=String(optional=True), prefix="-rn", doc=InputDocumentation(doc="optional"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepgen_V0_1_0().translate("wdl", allow_empty_container=True)

