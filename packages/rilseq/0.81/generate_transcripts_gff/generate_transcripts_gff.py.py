from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Generate_Transcripts_Gff_Py_V0_1_0 = CommandToolBuilder(tool="generate_transcripts_gff.py", base_command=["generate_transcripts_gff.py"], inputs=[], outputs=[], container="quay.io/biocontainers/rilseq:0.81--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Transcripts_Gff_Py_V0_1_0().translate("wdl")

