from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Word_At_A_Time_V0_1_0 = CommandToolBuilder(tool="word_at_a_time", base_command=["word-at-a-time"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Word_At_A_Time_V0_1_0().translate("wdl")

