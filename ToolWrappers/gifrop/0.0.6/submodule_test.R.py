from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Submodule_Test_R_V0_1_0 = CommandToolBuilder(tool="submodule_test.R", base_command=["submodule_test.R"], inputs=[], outputs=[], container="quay.io/biocontainers/gifrop:0.0.6--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Submodule_Test_R_V0_1_0().translate("wdl")

