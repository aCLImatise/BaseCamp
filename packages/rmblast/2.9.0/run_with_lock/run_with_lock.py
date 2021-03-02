from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_With_Lock_V0_1_0 = CommandToolBuilder(tool="run_with_lock", base_command=["run_with_lock"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_With_Lock_V0_1_0().translate("wdl", allow_empty_container=True)

