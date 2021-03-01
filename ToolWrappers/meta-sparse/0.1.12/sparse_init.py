from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sparse_Init_V0_1_0 = CommandToolBuilder(tool="sparse_init", base_command=["sparse", "init"], inputs=[ToolInput(tag="in_dbname", input_type=String(optional=True), prefix="--dbname", doc=InputDocumentation(doc="Name for the new database to be generated.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sparse_Init_V0_1_0().translate("wdl", allow_empty_container=True)

