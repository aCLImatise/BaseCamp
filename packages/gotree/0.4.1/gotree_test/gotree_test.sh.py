from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gotree_Test_Sh_V0_1_0 = CommandToolBuilder(tool="gotree_test.sh", base_command=["gotree_test.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/gotree:0.4.1--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Test_Sh_V0_1_0().translate("wdl")

