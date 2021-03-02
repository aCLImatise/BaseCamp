from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Adam_Submit_V0_1_0 = CommandToolBuilder(tool="adam_submit", base_command=["adam-submit"], inputs=[ToolInput(tag="in_d_eight_b", input_type=Int(), position=0, doc=InputDocumentation(doc="888   \       d8b          d8b  d8b"))], outputs=[], container="quay.io/biocontainers/adam:0.33.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Adam_Submit_V0_1_0().translate("wdl")

