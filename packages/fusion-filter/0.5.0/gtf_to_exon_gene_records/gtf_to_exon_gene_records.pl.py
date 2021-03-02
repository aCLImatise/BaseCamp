from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gtf_To_Exon_Gene_Records_Pl_V0_1_0 = CommandToolBuilder(tool="gtf_to_exon_gene_records.pl", base_command=["gtf_to_exon_gene_records.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf_To_Exon_Gene_Records_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

