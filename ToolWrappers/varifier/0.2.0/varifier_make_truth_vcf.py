from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Varifier_Make_Truth_Vcf_V0_1_0 = CommandToolBuilder(tool="varifier_make_truth_vcf", base_command=["varifier", "make_truth_vcf"], inputs=[ToolInput(tag="in_max_recall_ref_len", input_type=Int(optional=True), prefix="--max_recall_ref_len", doc=InputDocumentation(doc="Do not include variants where REF length is more than\nthis number. Default is no limit")), ToolInput(tag="in_flank_length", input_type=Int(optional=True), prefix="--flank_length", doc=InputDocumentation(doc="Length of sequence to add either side of variant when\nmaking probe sequences [100]")), ToolInput(tag="in_truth_mask", input_type=File(optional=True), prefix="--truth_mask", doc=InputDocumentation(doc="BED file of truth genome regions to mask. Any variants\nin the VCF matching to the mask are flagged and will\nnot count towards precision or recall if the output\nVCF is used with vcf_eval\n")), ToolInput(tag="in_truth_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA file of truth genome")), ToolInput(tag="in_ref_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="FASTA file of reference genome")), ToolInput(tag="in_outdir", input_type=String(), position=2, doc=InputDocumentation(doc="Name of output directory"))], outputs=[ToolOutput(tag="out_truth_mask", output_type=File(optional=True), selector=InputSelector(input_to_select="in_truth_mask", type_hint=File()), doc=OutputDocumentation(doc="BED file of truth genome regions to mask. Any variants\nin the VCF matching to the mask are flagged and will\nnot count towards precision or recall if the output\nVCF is used with vcf_eval\n"))], container="quay.io/biocontainers/varifier:0.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varifier_Make_Truth_Vcf_V0_1_0().translate("wdl")

