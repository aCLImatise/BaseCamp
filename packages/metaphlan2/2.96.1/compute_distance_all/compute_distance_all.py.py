from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Array

Compute_Distance_All_Py_V0_1_0 = CommandToolBuilder(tool="compute_distance_all.py", base_command=["compute_distance_all.py"], inputs=[ToolInput(tag="in_nprocs", input_type=String(optional=True), prefix="--nprocs", doc=InputDocumentation(doc="")), ToolInput(tag="in_ifn_alignments", input_type=Array(t=String(), optional=True), prefix="--ifn_alignments", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Distance_All_Py_V0_1_0().translate("wdl", allow_empty_container=True)

