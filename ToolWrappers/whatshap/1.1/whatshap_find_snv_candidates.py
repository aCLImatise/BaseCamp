from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Whatshap_Find_Snv_Candidates_V0_1_0 = CommandToolBuilder(tool="whatshap_find_snv_candidates", base_command=["whatshap", "find_snv_candidates"], inputs=[ToolInput(tag="in_min_abs", input_type=Int(optional=True), prefix="--minabs", doc=InputDocumentation(doc="Minimum absolute ALT depth to call a SNP (default: 3).")), ToolInput(tag="in_min_rel", input_type=Int(optional=True), prefix="--minrel", doc=InputDocumentation(doc="Minimum relative ALT depth to call a SNP (default:\n0.25).")), ToolInput(tag="in_multi_allelic_s", input_type=Boolean(optional=True), prefix="--multi-allelics", doc=InputDocumentation(doc="Also output multi-allelic sites, if not given only the\nbest ALT allele is reported (if unique).")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="Put this sample column into VCF (default: output\nsites-only VCF).")), ToolInput(tag="in_chromosome", input_type=String(optional=True), prefix="--chromosome", doc=InputDocumentation(doc="Name of chromosome to process. If not given, all\nchromosomes are processed.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output VCF file.")), ToolInput(tag="in_pac_bio", input_type=Boolean(optional=True), prefix="--pacbio", doc=InputDocumentation(doc="Input is PacBio. Sets minrel=0.25 and minabs=3.")), ToolInput(tag="in_nano_pore", input_type=Boolean(optional=True), prefix="--nanopore", doc=InputDocumentation(doc="Input is Nanopore. Sets minrel=0.4 and minabs=3.")), ToolInput(tag="in_illumina", input_type=Boolean(optional=True), prefix="--illumina", doc=InputDocumentation(doc="Input is Illumina. Sets minrel=0.25 and minabs=3.")), ToolInput(tag="in_ref", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA with reference genome")), ToolInput(tag="in_bam", input_type=String(), position=1, doc=InputDocumentation(doc="BAM file"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output VCF file."))], container="quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Whatshap_Find_Snv_Candidates_V0_1_0().translate("wdl")

