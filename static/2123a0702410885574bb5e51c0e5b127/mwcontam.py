from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mwcontam_V0_1_0 = CommandToolBuilder(tool="mwcontam", base_command=["mwcontam"], inputs=[ToolInput(tag="in_tolerance", input_type=Boolean(optional=True), prefix="-tolerance", doc=InputDocumentation(doc="float      [50.0] Ppm tolerance (Any numeric value)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mwcontam_V0_1_0().translate("wdl", allow_empty_container=True)

