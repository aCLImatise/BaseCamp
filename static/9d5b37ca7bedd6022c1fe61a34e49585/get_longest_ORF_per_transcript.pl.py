from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Longest_Orf_Per_Transcript_Pl_V0_1_0 = CommandToolBuilder(tool="get_longest_ORF_per_transcript.pl", base_command=["get_longest_ORF_per_transcript.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Longest_Orf_Per_Transcript_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

