from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Getannofasta_Pl_V0_1_0 = CommandToolBuilder(tool="getAnnoFasta.pl", base_command=["getAnnoFasta.pl"], inputs=[ToolInput(tag="in_seq_file", input_type=File(optional=True), prefix="--seqfile", doc=InputDocumentation(doc="Input a fasta file with the genomic sequences that AUGUSTUS was run on.\nWhen this option is given, an additional file with the individual\ncoding exon sequences (augustus.cdsexons) is output.\nand a file with the complete mRNA including UTRs (augustus.mrna) is output.")), ToolInput(tag="in_chop_cds", input_type=Boolean(optional=True), prefix="--chop_cds", doc=InputDocumentation(doc="for incomplete transcripts: cut off bases before first codon.\nThis flag only takes effect if coding sequence is not included in the\nAUGUSTUS output.\n"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getannofasta_Pl_V0_1_0().translate("wdl")

