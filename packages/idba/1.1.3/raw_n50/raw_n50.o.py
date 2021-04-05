from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Raw_N50_O_V0_1_0 = CommandToolBuilder(tool="raw_n50.o", base_command=["raw_n50.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Raw_N50_O_V0_1_0().translate("wdl", allow_empty_container=True)

