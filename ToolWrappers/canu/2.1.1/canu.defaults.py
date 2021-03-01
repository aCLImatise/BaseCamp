from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Canu_Defaults_V0_1_0 = CommandToolBuilder(tool="canu.defaults", base_command=["canu.defaults"], inputs=[], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Canu_Defaults_V0_1_0().translate("wdl")

