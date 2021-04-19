from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dram_Setup_Py_Update_Description_Db_V0_1_0 = CommandToolBuilder(tool="DRAM_setup.py_update_description_db", base_command=["DRAM-setup.py", "update_description_db"], inputs=[ToolInput(tag="in_output_loc", input_type=String(optional=True), prefix="--output_loc", doc=InputDocumentation(doc="Location to store desciption database, will be stored\nin location set in CONFIG if not given (default: None)\n"))], outputs=[], container="quay.io/biocontainers/dram:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_Setup_Py_Update_Description_Db_V0_1_0().translate("wdl")

