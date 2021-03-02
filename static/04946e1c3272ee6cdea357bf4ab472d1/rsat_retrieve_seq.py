from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rsat_Retrieve_Seq_V0_1_0 = CommandToolBuilder(tool="rsat_retrieve_seq", base_command=["rsat-retrieve-seq"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Retrieve_Seq_V0_1_0().translate("wdl", allow_empty_container=True)

