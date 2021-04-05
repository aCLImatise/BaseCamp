from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Migraine_V0_1_0 = CommandToolBuilder(tool="migraine", base_command=["migraine"], inputs=[], outputs=[], container="quay.io/biocontainers/migraine:0.6.0--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Migraine_V0_1_0().translate("wdl")

