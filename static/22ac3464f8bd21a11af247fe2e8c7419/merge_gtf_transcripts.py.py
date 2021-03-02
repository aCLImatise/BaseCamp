from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Merge_Gtf_Transcripts_Py_V0_1_0 = CommandToolBuilder(tool="merge_gtf_transcripts.py", base_command=["merge_gtf_transcripts.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Gtf_Transcripts_Py_V0_1_0().translate("wdl", allow_empty_container=True)

