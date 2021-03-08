from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Boolean

Vcfremap_V0_1_0 = CommandToolBuilder(tool="vcfremap", base_command=["vcfremap"], inputs=[ToolInput(tag="in_ref_window_size", input_type=Int(optional=True), prefix="--ref-window-size", doc=InputDocumentation(doc="align using this many bases flanking each side of the reference allele")), ToolInput(tag="in_alt_window_size", input_type=Int(optional=True), prefix="--alt-window-size", doc=InputDocumentation(doc="align using this many flanking bases from the reference around each alternate allele")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="FASTA reference file, required with -i and -u")), ToolInput(tag="in_match_score", input_type=String(optional=True), prefix="--match-score", doc=InputDocumentation(doc="match score for SW algorithm")), ToolInput(tag="in_mismatch_score", input_type=String(optional=True), prefix="--mismatch-score", doc=InputDocumentation(doc="mismatch score for SW algorithm")), ToolInput(tag="in_gap_open_penalty", input_type=String(optional=True), prefix="--gap-open-penalty", doc=InputDocumentation(doc="gap open penalty for SW algorithm")), ToolInput(tag="in_gap_extend_penalty", input_type=String(optional=True), prefix="--gap-extend-penalty", doc=InputDocumentation(doc="gap extension penalty for SW algorithm")), ToolInput(tag="in_entropy_gap_open", input_type=Boolean(optional=True), prefix="--entropy-gap-open", doc=InputDocumentation(doc="use entropy scaling for the gap open penalty")), ToolInput(tag="in_repeat_gap_extend", input_type=String(optional=True), prefix="--repeat-gap-extend", doc=InputDocumentation(doc="penalize non-repeat-unit gaps in repeat sequence")), ToolInput(tag="in_adjust_vcf", input_type=String(optional=True), prefix="--adjust-vcf", doc=InputDocumentation(doc="supply a new cigar as TAG in the output VCF")), ToolInput(tag="in_vcf_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfremap_V0_1_0().translate("wdl")

