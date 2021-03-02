from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dasmap_V0_1_0 = CommandToolBuilder(tool="DASmap", base_command=["DASmap"], inputs=[ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dasmap_V0_1_0().translate("wdl", allow_empty_container=True)

