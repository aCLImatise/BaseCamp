from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Adb01_Check_Db_Py_V0_1_0 = CommandToolBuilder(tool="adb01_check_db.py", base_command=["adb01_check_db.py"], inputs=[ToolInput(tag="in_db", input_type=Int(optional=True), prefix="-db", doc=InputDocumentation(doc="SQLite3 database")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="Name of alias database"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Adb01_Check_Db_Py_V0_1_0().translate("wdl")

