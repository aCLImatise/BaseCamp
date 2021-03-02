from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Pxlssq_V0_1_0 = CommandToolBuilder(tool="pxlssq", base_command=["pxlssq"], inputs=[ToolInput(tag="in_seq_f", input_type=File(optional=True), prefix="--seqf", doc=InputDocumentation(doc="input seq file, STDIN otherwise")), ToolInput(tag="in_indiv", input_type=Boolean(optional=True), prefix="--indiv", doc=InputDocumentation(doc="output stats for individual sequences")), ToolInput(tag="in_n_seq", input_type=Boolean(optional=True), prefix="--nseq", doc=InputDocumentation(doc="return the number of sequences")), ToolInput(tag="in_nchar", input_type=Boolean(optional=True), prefix="--nchar", doc=InputDocumentation(doc="return the number of characters (only if aligned)\n- for unaligned seqs, use with -i flag")), ToolInput(tag="in_labels", input_type=Boolean(optional=True), prefix="--labels", doc=InputDocumentation(doc="return all taxon labels (one per line)")), ToolInput(tag="in_prot", input_type=Boolean(optional=True), prefix="--prot", doc=InputDocumentation(doc="force interpret as protein (if inference fails)")), ToolInput(tag="in_aligned", input_type=Boolean(optional=True), prefix="--aligned", doc=InputDocumentation(doc="return whether sequences are aligned (same length)")), ToolInput(tag="in_freqs", input_type=Boolean(optional=True), prefix="--freqs", doc=InputDocumentation(doc="return character state frequencies")), ToolInput(tag="in_missing", input_type=Boolean(optional=True), prefix="--missing", doc=InputDocumentation(doc="return the proportion of missing (-,?) characters")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output stats file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output stats file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxlssq_V0_1_0().translate("wdl")

