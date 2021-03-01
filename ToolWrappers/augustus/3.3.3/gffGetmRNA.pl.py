from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Gffgetmrna_Pl_V0_1_0 = CommandToolBuilder(tool="gffGetmRNA.pl", base_command=["gffGetmRNA.pl"], inputs=[ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="Input a fasta file with the genomic sequences.")), ToolInput(tag="in_mrna", input_type=File(optional=True), prefix="--mrna", doc=InputDocumentation(doc="Output fasta file with mRNA sequences."))], outputs=[ToolOutput(tag="out_mrna", output_type=File(optional=True), selector=InputSelector(input_to_select="in_mrna", type_hint=File()), doc=OutputDocumentation(doc="Output fasta file with mRNA sequences."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffgetmrna_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

