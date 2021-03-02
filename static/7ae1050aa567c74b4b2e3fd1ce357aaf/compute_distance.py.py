from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Compute_Distance_Py_V0_1_0 = CommandToolBuilder(tool="compute_distance.py", base_command=["compute_distance.py"], inputs=[ToolInput(tag="in_of_n_prefix", input_type=Boolean(optional=True), prefix="--ofn_prefix", doc=InputDocumentation(doc="")), ToolInput(tag="in_ifn_alignment", input_type=String(optional=True), prefix="--ifn_alignment", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Distance_Py_V0_1_0().translate("wdl", allow_empty_container=True)

