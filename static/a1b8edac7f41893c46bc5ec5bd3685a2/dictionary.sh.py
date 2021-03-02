from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dictionary_Sh_V0_1_0 = CommandToolBuilder(tool="dictionary.sh", base_command=["dictionary.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/gecko:1.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dictionary_Sh_V0_1_0().translate("wdl")

