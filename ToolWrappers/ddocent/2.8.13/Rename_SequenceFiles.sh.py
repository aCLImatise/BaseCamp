from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rename_Sequencefiles_Sh_V0_1_0 = CommandToolBuilder(tool="Rename_SequenceFiles.sh", base_command=["Rename_SequenceFiles.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/ddocent:2.8.13--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rename_Sequencefiles_Sh_V0_1_0().translate("wdl")

