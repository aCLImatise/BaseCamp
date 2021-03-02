from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Check_Sort_Order_V0_1_0 = CommandToolBuilder(tool="check_sort_order", base_command=["check-sort-order"], inputs=[ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="a genome file of chromosome sizes and order")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/check-sort-order:0.0.7--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Sort_Order_V0_1_0().translate("wdl")

