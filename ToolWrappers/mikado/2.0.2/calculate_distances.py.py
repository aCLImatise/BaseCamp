from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Calculate_Distances_Py_V0_1_0 = CommandToolBuilder(tool="calculate_distances.py", base_command=["calculate_distances.py"], inputs=[ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calculate_Distances_Py_V0_1_0().translate("wdl")

