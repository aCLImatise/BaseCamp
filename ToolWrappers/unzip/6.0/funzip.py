from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Funzip_V0_1_0 = CommandToolBuilder(tool="funzip", base_command=["funzip"], inputs=[], outputs=[], container="quay.io/biocontainers/unzip:6.0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funzip_V0_1_0().translate("wdl")

