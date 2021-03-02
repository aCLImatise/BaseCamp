from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dbshow_V0_1_0 = CommandToolBuilder(tool="DBshow", base_command=["DBshow"], inputs=[ToolInput(tag="in_unq_uq", input_type=Boolean(optional=True), prefix="-unqUQ", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbshow_V0_1_0().translate("wdl", allow_empty_container=True)

