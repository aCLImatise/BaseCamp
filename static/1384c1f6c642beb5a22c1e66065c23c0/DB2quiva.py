from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Db2Quiva_V0_1_0 = CommandToolBuilder(tool="DB2quiva", base_command=["DB2quiva"], inputs=[ToolInput(tag="in_vu", input_type=Boolean(optional=True), prefix="-vU", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Db2Quiva_V0_1_0().translate("wdl", allow_empty_container=True)

