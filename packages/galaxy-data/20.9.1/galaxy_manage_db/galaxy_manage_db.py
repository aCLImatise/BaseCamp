from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Galaxy_Manage_Db_V0_1_0 = CommandToolBuilder(tool="galaxy_manage_db", base_command=["galaxy-manage-db"], inputs=[], outputs=[], container="quay.io/biocontainers/galaxy-data:20.9.1--py_2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Galaxy_Manage_Db_V0_1_0().translate("wdl")

