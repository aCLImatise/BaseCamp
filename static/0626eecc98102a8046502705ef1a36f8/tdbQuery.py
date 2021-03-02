from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tdbquery_V0_1_0 = CommandToolBuilder(tool="tdbQuery", base_command=["tdbQuery"], inputs=[ToolInput(tag="in_root", input_type=Boolean(optional=True), prefix="-root", doc=InputDocumentation(doc="=/path/to/trackDb/root/dir")), ToolInput(tag="in_release", input_type=String(optional=True), prefix="-release", doc=InputDocumentation(doc="|beta|public"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tdbquery_V0_1_0().translate("wdl", allow_empty_container=True)

