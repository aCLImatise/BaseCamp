from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Iu_Compute_Qual_Dicts_From_Fastq_V0_1_0 = CommandToolBuilder(tool="iu_compute_qual_dicts_from_fastq", base_command=["iu-compute-qual-dicts-from-fastq"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Compute_Qual_Dicts_From_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

