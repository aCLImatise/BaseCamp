from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Frags2Borders_Sh_V0_1_0 = CommandToolBuilder(tool="frags2borders.sh", base_command=["frags2borders.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/gecko:1.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Frags2Borders_Sh_V0_1_0().translate("wdl")

