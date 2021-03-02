from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cdna_Alignment_Orf_To_Genome_Orf_Pl_V0_1_0 = CommandToolBuilder(tool="cdna_alignment_orf_to_genome_orf.pl", base_command=["cdna_alignment_orf_to_genome_orf.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cdna_Alignment_Orf_To_Genome_Orf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

