from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Ribotricer_Prepare_Orfs_V0_1_0 = CommandToolBuilder(tool="ribotricer_prepare_orfs", base_command=["ribotricer", "prepare-orfs"], inputs=[ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Path to GTF file  [required]")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Path to FASTA file  [required]")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix to output file  [required]")), ToolInput(tag="in_min_orf_length", input_type=Int(optional=True), prefix="--min_orf_length", doc=InputDocumentation(doc="The minimum length (nts) of ORF to include\n[default: 60]")), ToolInput(tag="in_start_codons", input_type=String(optional=True), prefix="--start_codons", doc=InputDocumentation(doc="Comma separated list of start codons  [default:\nATG]")), ToolInput(tag="in_stop_codons", input_type=String(optional=True), prefix="--stop_codons", doc=InputDocumentation(doc="Comma separated list of stop codons  [default:\nTAG,TAA,TGA]")), ToolInput(tag="in_longest", input_type=Boolean(optional=True), prefix="--longest", doc=InputDocumentation(doc="Choose the most upstream start codon if multiple\nin frame ones exist"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix to output file  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribotricer_Prepare_Orfs_V0_1_0().translate("wdl", allow_empty_container=True)

