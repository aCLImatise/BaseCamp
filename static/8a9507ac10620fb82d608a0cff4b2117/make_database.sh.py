from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Database_Sh_V0_1_0 = CommandToolBuilder(tool="make_database.sh", base_command=["make_database.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/siann:1.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Database_Sh_V0_1_0().translate("wdl")

