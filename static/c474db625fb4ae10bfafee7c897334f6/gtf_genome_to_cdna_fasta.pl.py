from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gtf_Genome_To_Cdna_Fasta_Pl_V0_1_0 = CommandToolBuilder(tool="gtf_genome_to_cdna_fasta.pl", base_command=["gtf_genome_to_cdna_fasta.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf_Genome_To_Cdna_Fasta_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

