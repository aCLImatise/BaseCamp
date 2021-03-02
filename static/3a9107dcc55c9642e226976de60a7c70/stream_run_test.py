from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Stream_Run_Test_V0_1_0 = CommandToolBuilder(tool="stream_run_test", base_command=["stream_run_test"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stream_Run_Test_V0_1_0().translate("wdl", allow_empty_container=True)

