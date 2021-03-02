from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Antigenic_V0_1_0 = CommandToolBuilder(tool="antigenic", base_command=["antigenic"], inputs=[ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="-minlen", doc=InputDocumentation(doc="integer    [6] Minimum length of antigenic region\n(Integer from 1 to 50)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Antigenic_V0_1_0().translate("wdl", allow_empty_container=True)

