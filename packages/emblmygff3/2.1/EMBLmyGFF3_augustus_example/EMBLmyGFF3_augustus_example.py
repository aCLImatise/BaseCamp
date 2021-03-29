from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Emblmygff3_Augustus_Example_V0_1_0 = CommandToolBuilder(tool="EMBLmyGFF3_augustus_example", base_command=["EMBLmyGFF3-augustus-example"], inputs=[], outputs=[], container="quay.io/biocontainers/emblmygff3:2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Emblmygff3_Augustus_Example_V0_1_0().translate("wdl")

