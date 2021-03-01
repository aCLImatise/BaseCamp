from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Download_Ncbi_Taxa_Sh_V0_1_0 = CommandToolBuilder(tool="download_ncbi_taxa.sh", base_command=["download-ncbi-taxa.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Ncbi_Taxa_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

