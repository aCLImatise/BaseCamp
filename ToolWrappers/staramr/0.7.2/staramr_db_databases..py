from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Staramr_Db_Databases__V0_1_0 = CommandToolBuilder(tool="staramr_db_databases.", base_command=["staramr", "db", "databases."], inputs=[ToolInput(tag="in_star_amr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_db", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staramr:0.7.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Staramr_Db_Databases__V0_1_0().translate("wdl")

