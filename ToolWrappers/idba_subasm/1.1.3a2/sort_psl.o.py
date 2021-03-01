from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sort_Psl_O_V0_1_0 = CommandToolBuilder(tool="sort_psl.o", base_command=["sort_psl.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sort_Psl_O_V0_1_0().translate("wdl", allow_empty_container=True)

