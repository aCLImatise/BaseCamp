from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Farandomize_V0_1_0 = CommandToolBuilder(tool="faRandomize", base_command=["faRandomize"], inputs=[ToolInput(tag="in_seed", input_type=String(optional=True), prefix="-seed", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_randomized_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Farandomize_V0_1_0().translate("wdl", allow_empty_container=True)

