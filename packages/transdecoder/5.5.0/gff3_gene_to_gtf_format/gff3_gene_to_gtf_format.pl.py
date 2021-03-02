from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gff3_Gene_To_Gtf_Format_Pl_V0_1_0 = CommandToolBuilder(tool="gff3_gene_to_gtf_format.pl", base_command=["gff3_gene_to_gtf_format.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff3_Gene_To_Gtf_Format_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

