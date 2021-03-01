from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Seq_Cache_Populate_Pl_V0_1_0 = CommandToolBuilder(tool="seq_cache_populate.pl", base_command=["seq_cache_populate.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_Cache_Populate_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

