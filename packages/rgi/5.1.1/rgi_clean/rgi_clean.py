from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rgi_Clean_V0_1_0 = CommandToolBuilder(tool="rgi_clean", base_command=["rgi", "clean"], inputs=[ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="use local database (default: uses database in executable\ndirectory)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

