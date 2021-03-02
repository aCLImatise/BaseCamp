from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Pxaa2Cdn_V0_1_0 = CommandToolBuilder(tool="pxaa2cdn", base_command=["pxaa2cdn"], inputs=[ToolInput(tag="in_aa_seq_f", input_type=File(optional=True), prefix="--aaseqf", doc=InputDocumentation(doc="input sequence file, STDIN otherwise")), ToolInput(tag="in_nuc_seq_f", input_type=File(optional=True), prefix="--nucseqf", doc=InputDocumentation(doc="input sequence file, STDIN otherwise")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output fasta file, STOUT otherwise")), ToolInput(tag="in_rm_last_cdn", input_type=Boolean(optional=True), prefix="--rmlastcdn", doc=InputDocumentation(doc="removes last codon (default: false)")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output fasta file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxaa2Cdn_V0_1_0().translate("wdl")

