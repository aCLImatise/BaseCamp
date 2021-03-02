from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bandage_Load_V0_1_0 = CommandToolBuilder(tool="Bandage_load", base_command=["Bandage", "load"], inputs=[ToolInput(tag="in_draw", input_type=Boolean(optional=True), prefix="--draw", doc=InputDocumentation(doc="Draw graph after loading")), ToolInput(tag="in_help_all", input_type=Boolean(optional=True), prefix="--helpall", doc=InputDocumentation(doc="View all command line settings")), ToolInput(tag="in_graph", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bandage_Load_V0_1_0().translate("wdl", allow_empty_container=True)

