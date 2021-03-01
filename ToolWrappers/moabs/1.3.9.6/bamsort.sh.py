from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bamsort_Sh_V0_1_0 = CommandToolBuilder(tool="bamsort.sh", base_command=["bamsort.sh"], inputs=[ToolInput(tag="in_not_exist", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="not exist."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamsort_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

