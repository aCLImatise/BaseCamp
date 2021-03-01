from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bracken_Build_Kmer_Len_V0_1_0 = CommandToolBuilder(tool="bracken_build_KMER_LEN", base_command=["bracken-build", "KMER_LEN"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bracken_Build_Kmer_Len_V0_1_0().translate("wdl", allow_empty_container=True)

