from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dadaist2_Getdb_V0_1_0 = CommandToolBuilder(tool="dadaist2_getdb", base_command=["dadaist2-getdb"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dadaist2:0.6.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Getdb_V0_1_0().translate("wdl")

