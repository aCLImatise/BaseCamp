from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Kraken_Report_V0_1_0 = CommandToolBuilder(tool="kraken_report", base_command=["kraken-report"], inputs=[ToolInput(tag="in_show_zeros", input_type=Boolean(optional=True), prefix="--show-zeros", doc=InputDocumentation(doc="")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kraken_Report_V0_1_0().translate("wdl", allow_empty_container=True)

