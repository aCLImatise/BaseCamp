from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kmer2Read_Distr_V0_1_0 = CommandToolBuilder(tool="kmer2read_distr", base_command=["kmer2read_distr"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmer2Read_Distr_V0_1_0().translate("wdl", allow_empty_container=True)

