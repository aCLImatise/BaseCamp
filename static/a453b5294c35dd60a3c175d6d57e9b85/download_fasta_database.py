from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Download_Fasta_Database_V0_1_0 = CommandToolBuilder(tool="download_fasta_database", base_command=["download_fasta_database"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Fasta_Database_V0_1_0().translate("wdl", allow_empty_container=True)

