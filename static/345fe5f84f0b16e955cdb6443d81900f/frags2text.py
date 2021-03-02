from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Frags2Text_V0_1_0 = CommandToolBuilder(tool="frags2text", base_command=["frags2text"], inputs=[], outputs=[], container="quay.io/biocontainers/gecko:1.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Frags2Text_V0_1_0().translate("wdl")

