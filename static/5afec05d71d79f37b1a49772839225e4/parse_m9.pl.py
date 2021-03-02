from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parse_M9_Pl_V0_1_0 = CommandToolBuilder(tool="parse_m9.pl", base_command=["parse_m9.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_M9_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

