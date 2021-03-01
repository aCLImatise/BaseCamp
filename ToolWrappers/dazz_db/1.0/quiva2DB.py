from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Quiva2Db_V0_1_0 = CommandToolBuilder(tool="quiva2DB", base_command=["quiva2DB"], inputs=[ToolInput(tag="in_vl", input_type=Boolean(optional=True), prefix="-vl", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quiva2Db_V0_1_0().translate("wdl", allow_empty_container=True)

