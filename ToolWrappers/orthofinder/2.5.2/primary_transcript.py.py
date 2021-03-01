from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Primary_Transcript_Py_V0_1_0 = CommandToolBuilder(tool="primary_transcript.py", base_command=["primary_transcript.py"], inputs=[], outputs=[], container="quay.io/biocontainers/orthofinder:2.5.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primary_Transcript_Py_V0_1_0().translate("wdl")

