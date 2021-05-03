from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Consensus_V0_1_0 = CommandToolBuilder(tool="Consensus", base_command=["Consensus"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="write the output FASTA file to OUTPUT")), ToolInput(tag="in_pile_up", input_type=String(optional=True), prefix="--pileup", doc=InputDocumentation(doc="write the pileup to PILEUP")), ToolInput(tag="in_nt", input_type=Boolean(optional=True), prefix="--nt", doc=InputDocumentation(doc="output nucleotide contigs [default]")), ToolInput(tag="in_cs", input_type=Boolean(optional=True), prefix="--cs", doc=InputDocumentation(doc="output colour-space contigs")), ToolInput(tag="in_variants", input_type=Boolean(optional=True), prefix="--variants", doc=InputDocumentation(doc="print only variants in the pileup")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_contig", input_type=String(), position=0, doc=InputDocumentation(doc="contigs in FASTA format"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="write the output FASTA file to OUTPUT"))], container="quay.io/biocontainers/abyss:2.3.1--hd403d74_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Consensus_V0_1_0().translate("wdl")

