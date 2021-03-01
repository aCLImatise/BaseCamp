from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Medaka_Version_Report_V0_1_0 = CommandToolBuilder(tool="medaka_version_report", base_command=["medaka_version_report"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Version_Report_V0_1_0().translate("wdl", allow_empty_container=True)

