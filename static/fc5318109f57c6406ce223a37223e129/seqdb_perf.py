from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Seqdb_Perf_V0_1_0 = CommandToolBuilder(tool="seqdb_perf", base_command=["seqdb_perf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqdb_Perf_V0_1_0().translate("wdl", allow_empty_container=True)

