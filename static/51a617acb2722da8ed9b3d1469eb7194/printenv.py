from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Printenv_V0_1_0 = CommandToolBuilder(tool="printenv", base_command=["printenv"], inputs=[ToolInput(tag="in_null", input_type=Boolean(optional=True), prefix="--null", doc=InputDocumentation(doc="end each output line with NUL, not newline"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Printenv_V0_1_0().translate("wdl", allow_empty_container=True)

