from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Kraken_Filter_V0_1_0 = CommandToolBuilder(tool="kraken_filter", base_command=["kraken-filter"], inputs=[ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kraken_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

