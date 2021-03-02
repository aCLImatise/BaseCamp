from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mt19937Ar_Test_V0_1_0 = CommandToolBuilder(tool="mt19937ar_test", base_command=["mt19937ar-test"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mt19937Ar_Test_V0_1_0().translate("wdl", allow_empty_container=True)

