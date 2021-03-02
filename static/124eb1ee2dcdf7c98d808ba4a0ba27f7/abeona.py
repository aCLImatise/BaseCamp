from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Abeona_V0_1_0 = CommandToolBuilder(tool="abeona", base_command=["abeona"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(), position=0, doc=InputDocumentation(doc="sub-command arguments"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abeona_V0_1_0().translate("wdl", allow_empty_container=True)

