from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clstr_Sql_Tbl_Pl_V0_1_0 = CommandToolBuilder(tool="clstr_sql_tbl.pl", base_command=["clstr_sql_tbl.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clstr_Sql_Tbl_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

