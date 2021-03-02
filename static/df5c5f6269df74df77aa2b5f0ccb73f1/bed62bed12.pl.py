from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bed62Bed12_Pl_V0_1_0 = CommandToolBuilder(tool="bed62bed12.pl", base_command=["bed62bed12.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed62Bed12_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

