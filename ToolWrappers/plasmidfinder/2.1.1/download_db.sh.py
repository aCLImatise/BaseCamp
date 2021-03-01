from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Download_Db_Sh_V0_1_0 = CommandToolBuilder(tool="download_db.sh", base_command=["download-db.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/plasmidfinder:2.1.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Db_Sh_V0_1_0().translate("wdl")

