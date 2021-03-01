from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Assemblyget_V0_1_0 = CommandToolBuilder(tool="assemblyget", base_command=["assemblyget"], inputs=[ToolInput(tag="in_assembly", input_type=Boolean(optional=True), prefix="-assembly", doc=InputDocumentation(doc=": enter assembly value: Error: Unable to get reply from user - end of standard input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assemblyget_V0_1_0().translate("wdl", allow_empty_container=True)

