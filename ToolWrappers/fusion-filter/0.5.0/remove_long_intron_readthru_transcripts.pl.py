from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Remove_Long_Intron_Readthru_Transcripts_Pl_V0_1_0 = CommandToolBuilder(tool="remove_long_intron_readthru_transcripts.pl", base_command=["remove_long_intron_readthru_transcripts.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Long_Intron_Readthru_Transcripts_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

