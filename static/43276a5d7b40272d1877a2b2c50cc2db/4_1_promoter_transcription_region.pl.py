from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


4_1_Promoter_Transcription_Region_Pl_V0_1_0 = CommandToolBuilder(tool="4_1_promoter_transcription_region.pl", base_command=["4_1_promoter_transcription_region.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/sat-bsa:1.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    4_1_Promoter_Transcription_Region_Pl_V0_1_0().translate("wdl")

