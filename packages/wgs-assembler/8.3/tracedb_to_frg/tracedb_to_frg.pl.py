from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tracedb_To_Frg_Pl_V0_1_0 = CommandToolBuilder(tool="tracedb_to_frg.pl", base_command=["tracedb-to-frg.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tracedb_To_Frg_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

