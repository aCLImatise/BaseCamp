from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ganon_Table_V0_1_0 = CommandToolBuilder(tool="ganon_table", base_command=["ganon", "table"], inputs=[ToolInput(tag="in_min_percentage", input_type=Boolean(optional=True), prefix="--min-percentage", doc=InputDocumentation(doc="")), ToolInput(tag="in_min_count", input_type=Boolean(optional=True), prefix="--min-count", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ganon_Table_V0_1_0().translate("wdl")

