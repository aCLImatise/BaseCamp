from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean, String, File

Shorah_Snv_V0_1_0 = CommandToolBuilder(tool="shorah_snv", base_command=["shorah", "snv"], inputs=[ToolInput(tag="in_alpha", input_type=Float(optional=True), prefix="--alpha", doc=InputDocumentation(doc="alpha in dpm sampling")), ToolInput(tag="in_region_chrmstartstopregion_format", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc=":start-stop, --region chrm:start-stop\nregion in format 'chr:start-stop', e.g.\n'chrm:1000-3000'")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="set seed for reproducible results")), ToolInput(tag="in_max_cov", input_type=Int(optional=True), prefix="--maxcov", doc=InputDocumentation(doc="approximate max coverage allowed")), ToolInput(tag="in_sigma", input_type=Float(optional=True), prefix="--sigma", doc=InputDocumentation(doc="sigma value to use when calling SNVs")), ToolInput(tag="in_ignore_indels", input_type=Boolean(optional=True), prefix="--ignore_indels", doc=InputDocumentation(doc="ignore SNVs adjacent to insertions/deletions (legacy\nbehaviour of 'fil', ignore this option if you don't\nunderstand)")), ToolInput(tag="in_of", input_type=String(optional=True), prefix="-of", doc=InputDocumentation(doc="[{csv,vcf} ...], --out_format {csv,vcf} [{csv,vcf} ...]\noutput format of called SNVs")), ToolInput(tag="in_increment", input_type=Int(optional=True), prefix="--increment", doc=InputDocumentation(doc="value of increment to use when calling SNVs (1 used in\namplicon mode)")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="sorted bam format alignment file")), ToolInput(tag="in_fast_a", input_type=String(optional=True), prefix="--fasta", doc=InputDocumentation(doc="reference genome in fasta format")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_shor_ah", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_subcommand", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_snv", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shorah_Snv_V0_1_0().translate("wdl", allow_empty_container=True)

