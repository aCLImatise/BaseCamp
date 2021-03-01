from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kp1Mer_To_Kmer_Py_V0_1_0 = CommandToolBuilder(tool="kp1mer_to_kmer.py", base_command=["kp1mer_to_kmer.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kp1Mer_To_Kmer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

