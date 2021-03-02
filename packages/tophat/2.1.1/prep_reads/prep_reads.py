from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Prep_Reads_V0_1_0 = CommandToolBuilder(tool="prep_reads", base_command=["prep_reads"], inputs=[ToolInput(tag="in_filter_multi", input_type=String(optional=True), prefix="--filter-multi", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prep_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

