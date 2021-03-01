from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Start_Tassel_Pl_V0_1_0 = CommandToolBuilder(tool="start_tassel.pl", base_command=["start_tassel.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Start_Tassel_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

