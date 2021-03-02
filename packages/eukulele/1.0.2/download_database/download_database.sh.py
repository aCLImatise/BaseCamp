from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Download_Database_Sh_V0_1_0 = CommandToolBuilder(tool="download_database.sh", base_command=["download_database.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/eukulele:1.0.2--pyhcb32578_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Database_Sh_V0_1_0().translate("wdl")

