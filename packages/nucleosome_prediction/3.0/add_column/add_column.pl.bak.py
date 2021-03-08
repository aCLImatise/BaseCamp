from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Add_Column_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="add_column.pl.bak", base_command=["add_column.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Column_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

