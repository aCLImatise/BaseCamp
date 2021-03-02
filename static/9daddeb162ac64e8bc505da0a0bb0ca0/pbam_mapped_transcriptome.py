from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pbam_Mapped_Transcriptome_V0_1_0 = CommandToolBuilder(tool="pbam_mapped_transcriptome", base_command=["pbam_mapped_transcriptome"], inputs=[], outputs=[], container="quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbam_Mapped_Transcriptome_V0_1_0().translate("wdl")

