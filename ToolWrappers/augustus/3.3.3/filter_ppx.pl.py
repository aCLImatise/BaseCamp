from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Ppx_Pl_V0_1_0 = CommandToolBuilder(tool="filter_ppx.pl", base_command=["filter-ppx.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Ppx_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

