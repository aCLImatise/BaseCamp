from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Split_Scaffold_O_V0_1_0 = CommandToolBuilder(tool="split_scaffold.o", base_command=["split_scaffold.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Scaffold_O_V0_1_0().translate("wdl", allow_empty_container=True)

