from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gsvar_Preferred_Transcripts_Tsv_V0_1_0 = CommandToolBuilder(tool="GSvar_preferred_transcripts.tsv", base_command=["GSvar_preferred_transcripts.tsv"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsvar_Preferred_Transcripts_Tsv_V0_1_0().translate("wdl", allow_empty_container=True)

