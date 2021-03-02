from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bioawk_V0_1_0 = CommandToolBuilder(tool="bioawk", base_command=["bioawk"], inputs=[ToolInput(tag="in_f", input_type=String(optional=True), prefix="-F", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioawk_V0_1_0().translate("wdl", allow_empty_container=True)

