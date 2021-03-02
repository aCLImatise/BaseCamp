from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Expand_V0_1_0 = CommandToolBuilder(tool="expand", base_command=["expand"], inputs=[ToolInput(tag="in_initial", input_type=Boolean(optional=True), prefix="--initial", doc=InputDocumentation(doc="do not convert tabs after non blanks"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Expand_V0_1_0().translate("wdl", allow_empty_container=True)

