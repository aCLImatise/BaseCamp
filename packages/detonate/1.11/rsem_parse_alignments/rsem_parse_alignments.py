from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rsem_Parse_Alignments_V0_1_0 = CommandToolBuilder(tool="rsem_parse_alignments", base_command=["rsem-parse-alignments"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Parse_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

