from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gtf_To_Gene_Spans_Pl_V0_1_0 = CommandToolBuilder(tool="gtf_to_gene_spans.pl", base_command=["gtf_to_gene_spans.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf_To_Gene_Spans_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

