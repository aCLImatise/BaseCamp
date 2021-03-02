from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Go2Error_Report_V0_1_0 = CommandToolBuilder(tool="go2error_report", base_command=["go2error_report"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Go2Error_Report_V0_1_0().translate("wdl", allow_empty_container=True)

