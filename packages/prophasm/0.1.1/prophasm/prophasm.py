from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Prophasm_V0_1_0 = CommandToolBuilder(tool="prophasm", base_command=["prophasm"], inputs=[ToolInput(tag="in_kmer_size", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="K-mer size.")), ToolInput(tag="in_input_fasta_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input FASTA file (can be used multiple times).")), ToolInput(tag="in_output_fasta_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output FASTA file (if used, must be used as many times as -i).")), ToolInput(tag="in_compute_intersection_subtract", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="Compute intersection, subtract it, save it.")), ToolInput(tag="in_output_file_kmer", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="Output file with k-mer statistics.")), ToolInput(tag="in_silent_mode", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Silent mode."))], outputs=[ToolOutput(tag="out_output_fasta_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fasta_file", type_hint=File()), doc=OutputDocumentation(doc="Output FASTA file (if used, must be used as many times as -i).")), ToolOutput(tag="out_output_file_kmer", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_kmer", type_hint=File()), doc=OutputDocumentation(doc="Output file with k-mer statistics."))], container="quay.io/biocontainers/prophasm:0.1.1--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophasm_V0_1_0().translate("wdl")

