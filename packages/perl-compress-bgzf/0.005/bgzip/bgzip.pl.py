from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bgzip_Pl_V0_1_0 = CommandToolBuilder(tool="bgzip.pl", base_command=["bgzip.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bgzip_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

