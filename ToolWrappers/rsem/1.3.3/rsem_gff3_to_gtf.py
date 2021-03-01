from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rsem_Gff3_To_Gtf_V0_1_0 = CommandToolBuilder(tool="rsem_gff3_to_gtf", base_command=["rsem-gff3-to-gtf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Gff3_To_Gtf_V0_1_0().translate("wdl", allow_empty_container=True)

