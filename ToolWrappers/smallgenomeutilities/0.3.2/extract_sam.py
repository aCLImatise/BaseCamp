from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, Float, String

Extract_Sam_V0_1_0 = CommandToolBuilder(tool="extract_sam", base_command=["extract_sam"], inputs=[ToolInput(tag="in_name_target_", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of target contig, e.g. HXB2:2253-2256")), ToolInput(tag="in_print_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print more information (such as subsequences in references)")), ToolInput(tag="in_input_sambam_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input SAM/BAM file")), ToolInput(tag="in_output_fasta_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output FASTA file")), ToolInput(tag="in_mf", input_type=Float(optional=True), prefix="--mf", doc=InputDocumentation(doc="Minimum frequency to output")), ToolInput(tag="in_mc", input_type=Int(optional=True), prefix="--mc", doc=InputDocumentation(doc="Minimum count to output")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix to add to header")), ToolInput(tag="in_rg", input_type=Float(optional=True), prefix="--rg", doc=InputDocumentation(doc="Minimum frequency for gap containing sequences")), ToolInput(tag="in_rog", input_type=Boolean(optional=True), prefix="--rog", doc=InputDocumentation(doc="Remove sequences consisting only of gaps and stop codons")), ToolInput(tag="in_output_sequences_translated", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Output sequences as translated proteins")), ToolInput(tag="in_output_sequences_trait", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="Output sequences in trait format (for SeTesT)"))], outputs=[ToolOutput(tag="out_output_fasta_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fasta_file", type_hint=File()), doc=OutputDocumentation(doc="Output FASTA file"))], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Sam_V0_1_0().translate("wdl")

