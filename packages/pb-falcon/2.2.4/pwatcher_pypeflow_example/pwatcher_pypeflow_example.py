from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pwatcher_Pypeflow_Example_V0_1_0 = CommandToolBuilder(tool="pwatcher_pypeflow_example", base_command=["pwatcher-pypeflow-example"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pwatcher_Pypeflow_Example_V0_1_0().translate("wdl", allow_empty_container=True)

