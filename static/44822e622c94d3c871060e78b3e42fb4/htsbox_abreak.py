from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, Float, String

Htsbox_Abreak_V0_1_0 = CommandToolBuilder(tool="htsbox_abreak", base_command=["htsbox", "abreak"], inputs=[ToolInput(tag="in_assume_input_bam", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="assume the input is BAM (default is SAM)")), ToolInput(tag="in_exclude_contigs_shorter", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="exclude contigs shorter than INT [0]")), ToolInput(tag="in_exclude_alignemnts_score", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="exclude alignemnts with score less than INT [0]")), ToolInput(tag="in_exclude_alignments_mapq", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="exclude alignments with mapQ below INT [10]")), ToolInput(tag="in_filter_calls_min", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="filter calls with min flanking depth below INT in VCF [10]")), ToolInput(tag="in_print_break_points", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="print break points")), ToolInput(tag="in_vcf_output_force", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="VCF output (force -p)")), ToolInput(tag="in_unitig_sv_calling", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="unitig SV calling mode (-pq40 -s80)")), ToolInput(tag="in_faidx_indexed_fasta", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="faidx indexed reference fasta (for -u)")), ToolInput(tag="in_aln_overlapping_aln", input_type=Float(optional=True), prefix="-m", doc=InputDocumentation(doc="exclude aln overlapping another long aln by FLOAT fraction (effective w/o -p) [0.5]")), ToolInput(tag="in_join_alignments_separated", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="join alignments separated by a gap shorter than INT bp (effective w/o -p) [500]")), ToolInput(tag="in_hts_cmd", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_a_break", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_un_srt_dots_am", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Abreak_V0_1_0().translate("wdl", allow_empty_container=True)

