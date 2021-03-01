from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Filter_By_Count_Py_V0_1_0 = CommandToolBuilder(tool="filter_by_count.py", base_command=["filter_by_count.py"], inputs=[ToolInput(tag="in_min_count", input_type=Int(optional=True), prefix="--min_count", doc=InputDocumentation(doc="Minimum FL count (default: 2)")), ToolInput(tag="in_dun_use_group_count", input_type=Boolean(optional=True), prefix="--dun_use_group_count", doc=InputDocumentation(doc="Turn off more stringent min count (default: off)\n"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_By_Count_Py_V0_1_0().translate("wdl")

