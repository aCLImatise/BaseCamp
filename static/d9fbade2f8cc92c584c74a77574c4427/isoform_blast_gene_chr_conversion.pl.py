from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Isoform_Blast_Gene_Chr_Conversion_Pl_V0_1_0 = CommandToolBuilder(tool="isoform_blast_gene_chr_conversion.pl", base_command=["isoform_blast_gene_chr_conversion.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isoform_Blast_Gene_Chr_Conversion_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

