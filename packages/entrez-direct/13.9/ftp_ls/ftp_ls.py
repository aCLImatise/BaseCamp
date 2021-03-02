from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ftp_Ls_V0_1_0 = CommandToolBuilder(tool="ftp_ls", base_command=["ftp-ls"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ftp_Ls_V0_1_0().translate("wdl")

