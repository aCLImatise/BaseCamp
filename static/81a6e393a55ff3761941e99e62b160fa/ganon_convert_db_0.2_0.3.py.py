from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ganon_Convert_Db_0_2_0_3_Py_V0_1_0 = CommandToolBuilder(tool="ganon_convert_db_0.2_0.3.py", base_command=["ganon-convert-db-0.2-0.3.py"], inputs=[], outputs=[], container="quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ganon_Convert_Db_0_2_0_3_Py_V0_1_0().translate("wdl")

