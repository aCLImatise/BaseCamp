from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Megan_V0_1_0 = CommandToolBuilder(tool="MEGAN", base_command=["MEGAN"], inputs=[], outputs=[], container="quay.io/biocontainers/megan:6.21.2--h9ee0642_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megan_V0_1_0().translate("wdl")

