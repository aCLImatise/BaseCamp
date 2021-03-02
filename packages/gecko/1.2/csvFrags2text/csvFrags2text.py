from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Csvfrags2Text_V0_1_0 = CommandToolBuilder(tool="csvFrags2text", base_command=["csvFrags2text"], inputs=[], outputs=[], container="quay.io/biocontainers/gecko:1.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csvfrags2Text_V0_1_0().translate("wdl")

