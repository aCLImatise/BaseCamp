from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Check_Reads_Format_V0_1_0 = CommandToolBuilder(tool="check_reads_format", base_command=["check_reads_format"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Reads_Format_V0_1_0().translate("wdl", allow_empty_container=True)

