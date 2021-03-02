from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rsem_Refseq_Extract_Primary_Assembly_V0_1_0 = CommandToolBuilder(tool="rsem_refseq_extract_primary_assembly", base_command=["rsem-refseq-extract-primary-assembly"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Refseq_Extract_Primary_Assembly_V0_1_0().translate("wdl", allow_empty_container=True)

