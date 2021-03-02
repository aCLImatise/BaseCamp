from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Triplet_Dist_V0_1_0 = CommandToolBuilder(tool="triplet_dist", base_command=["triplet_dist"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Triplet_Dist_V0_1_0().translate("wdl", allow_empty_container=True)

