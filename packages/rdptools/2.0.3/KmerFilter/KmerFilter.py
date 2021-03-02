from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kmerfilter_V0_1_0 = CommandToolBuilder(tool="KmerFilter", base_command=["KmerFilter"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmerfilter_V0_1_0().translate("wdl", allow_empty_container=True)

