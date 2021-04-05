from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Poppunk_Db_Info_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_db_info.py", base_command=["poppunk_db_info.py"], inputs=[ToolInput(tag="in_list_samples", input_type=Boolean(optional=True), prefix="--list-samples", doc=InputDocumentation(doc="List every sample in the database")), ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc="Database file (.h5)"))], outputs=[], container="quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Db_Info_Py_V0_1_0().translate("wdl")

