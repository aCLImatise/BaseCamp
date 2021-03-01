from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Carnac_Lr_V0_1_0 = CommandToolBuilder(tool="CARNAC_LR", base_command=["CARNAC-LR"], inputs=[ToolInput(tag="in_mandatory", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="mandatory")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="the number of threads (default 2)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Carnac_Lr_V0_1_0().translate("wdl", allow_empty_container=True)

