from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Espell_V0_1_0 = CommandToolBuilder(tool="espell", base_command=["espell"], inputs=[ToolInput(tag="in_db", input_type=Boolean(optional=True), prefix="-db", doc=InputDocumentation(doc="Database name")), ToolInput(tag="in_query", input_type=Boolean(optional=True), prefix="-query", doc=InputDocumentation(doc="Query string"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Espell_V0_1_0().translate("wdl", allow_empty_container=True)

