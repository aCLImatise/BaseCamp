from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Md5Fa_V0_1_0 = CommandToolBuilder(tool="md5fa", base_command=["md5fa"], inputs=[], outputs=[], container="quay.io/biocontainers/samtools:1.11--h6270b1f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Md5Fa_V0_1_0().translate("wdl")

