from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Reduce_Kmers_V0_1_0 = CommandToolBuilder(tool="reduce_kmers", base_command=["reduce-kmers"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reduce_Kmers_V0_1_0().translate("wdl", allow_empty_container=True)

