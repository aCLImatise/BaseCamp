from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gencode_Extract_Relevant_Gtf_Exons_Pl_V0_1_0 = CommandToolBuilder(tool="gencode_extract_relevant_gtf_exons.pl", base_command=["gencode_extract_relevant_gtf_exons.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gencode_Extract_Relevant_Gtf_Exons_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

