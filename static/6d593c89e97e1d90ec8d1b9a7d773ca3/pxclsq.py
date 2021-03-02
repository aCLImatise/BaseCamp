from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Boolean

Pxclsq_V0_1_0 = CommandToolBuilder(tool="pxclsq", base_command=["pxclsq"], inputs=[ToolInput(tag="in_seq_f", input_type=File(optional=True), prefix="--seqf", doc=InputDocumentation(doc="input sequence file, STDIN otherwise")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output fasta file, STOUT otherwise")), ToolInput(tag="in_prop", input_type=Float(optional=True), prefix="--prop", doc=InputDocumentation(doc="proportion required to be present, default=0.5")), ToolInput(tag="in_tax_a", input_type=Boolean(optional=True), prefix="--taxa", doc=InputDocumentation(doc="consider missing data per taxon (default: per site)")), ToolInput(tag="in_codon", input_type=Boolean(optional=True), prefix="--codon", doc=InputDocumentation(doc="examine sequences by codon rather than site\n- requires all sequences be in frame and of correct length")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="report counts of missing data and exit\n- combine with -t to get report by taxon (rather than site)\n- combine with -c to use codons as units")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="more verbose output (i.e. if entire seqs are removed)")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output fasta file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxclsq_V0_1_0().translate("wdl")

