from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pwd_V0_1_0 = CommandToolBuilder(tool="pwd", base_command=["pwd"], inputs=[ToolInput(tag="in_logical", input_type=Boolean(optional=True), prefix="--logical", doc=InputDocumentation(doc="use PWD from environment, even if it contains symlinks")), ToolInput(tag="in_physical", input_type=Boolean(optional=True), prefix="--physical", doc=InputDocumentation(doc="avoid all symlinks"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pwd_V0_1_0().translate("wdl", allow_empty_container=True)

