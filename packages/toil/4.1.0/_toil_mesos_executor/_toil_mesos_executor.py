from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Toil_Mesos_Executor_V0_1_0 = CommandToolBuilder(tool="_toil_mesos_executor", base_command=["_toil_mesos_executor"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Toil_Mesos_Executor_V0_1_0().translate("wdl", allow_empty_container=True)

