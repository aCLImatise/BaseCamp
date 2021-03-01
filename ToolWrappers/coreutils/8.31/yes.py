from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Yes_V0_1_0 = CommandToolBuilder(tool="yes", base_command=["yes"], inputs=[ToolInput(tag="in_string", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yes_V0_1_0().translate("wdl", allow_empty_container=True)

