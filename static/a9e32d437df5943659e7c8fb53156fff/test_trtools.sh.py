from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Test_Trtools_Sh_V0_1_0 = CommandToolBuilder(tool="test_trtools.sh", base_command=["test_trtools.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Trtools_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

