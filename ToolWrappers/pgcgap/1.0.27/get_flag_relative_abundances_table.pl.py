from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Flag_Relative_Abundances_Table_Pl_V0_1_0 = CommandToolBuilder(tool="get_flag_relative_abundances_table.pl", base_command=["get_flag_relative_abundances_table.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/pgcgap:1.0.27--py37pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Flag_Relative_Abundances_Table_Pl_V0_1_0().translate("wdl")

