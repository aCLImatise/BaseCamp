from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Svtools_Vcfsort_V0_1_0 = CommandToolBuilder(tool="svtools_vcfsort", base_command=["svtools", "vcfsort"], inputs=[ToolInput(tag="in_support", input_type=Boolean(optional=True), prefix="--support", doc=InputDocumentation(doc="")), ToolInput(tag="in_svtools", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtools_Vcfsort_V0_1_0().translate("wdl", allow_empty_container=True)

