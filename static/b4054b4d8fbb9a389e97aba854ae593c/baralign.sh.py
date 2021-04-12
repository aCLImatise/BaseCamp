from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Baralign_Sh_V0_1_0 = CommandToolBuilder(tool="baralign.sh", base_command=["baralign.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Baralign_Sh_V0_1_0().translate("wdl")

