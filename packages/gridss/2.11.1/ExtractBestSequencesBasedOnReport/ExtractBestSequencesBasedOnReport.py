from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extractbestsequencesbasedonreport_V0_1_0 = CommandToolBuilder(tool="ExtractBestSequencesBasedOnReport", base_command=["ExtractBestSequencesBasedOnReport"], inputs=[], outputs=[], container="quay.io/biocontainers/gridss:2.11.1--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractbestsequencesbasedonreport_V0_1_0().translate("wdl")

