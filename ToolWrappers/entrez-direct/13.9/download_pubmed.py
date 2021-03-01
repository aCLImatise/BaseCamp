from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Download_Pubmed_V0_1_0 = CommandToolBuilder(tool="download_pubmed", base_command=["download-pubmed"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Pubmed_V0_1_0().translate("wdl")

