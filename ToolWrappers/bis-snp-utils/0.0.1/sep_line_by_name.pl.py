from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sep_Line_By_Name_Pl_V0_1_0 = CommandToolBuilder(tool="sep_line_by_name.pl", base_command=["sep_line_by_name.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sep_Line_By_Name_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

