from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rsem_Eval_Estimate_Transcript_Length_Distribution_V0_1_0 = CommandToolBuilder(tool="rsem_eval_estimate_transcript_length_distribution", base_command=["rsem-eval-estimate-transcript-length-distribution"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Eval_Estimate_Transcript_Length_Distribution_V0_1_0().translate("wdl", allow_empty_container=True)

