from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Vcf2Snv_Alignment_Pl_V0_1_0 = CommandToolBuilder(tool="vcf2snv_alignment.pl", base_command=["vcf2snv_alignment.pl"], inputs=[ToolInput(tag="in_consolidate_vcf", input_type=Int(optional=True), prefix="--consolidate_vcf", doc=InputDocumentation(doc="=files/dataset2.dat --consolidate_vcf")), ToolInput(tag="in_invalid_pos", input_type=Boolean(optional=True), prefix="--invalid-pos", doc=InputDocumentation(doc="[invalid positions TSV file] --numcpus 5 --bcftools-path")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="[OPTIONAL]\nThe format to output the alignment to, one of the Bio::AlignIO\nsupported formats (default: fasta).")), ToolInput(tag="in_output_base", input_type=File(optional=True), prefix="--output-base", doc=InputDocumentation(doc="[REQUIRED]\nThe output base name for the alignment file(s).")), ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc="[OPTIONAL]\nThe name of the reference to use in the alignment (default:\nreference).")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="[REQUIRED]\nFasta file.")), ToolInput(tag="in_num_cpus", input_type=Boolean(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="[REQUIRED]\nDesired number of CPUs for the job.")), ToolInput(tag="in_bcf_tools_path", input_type=Boolean(optional=True), prefix="--bcftools-path", doc=InputDocumentation(doc="[OPTIONAL]\nPath to BCFTools.")), ToolInput(tag="in_v_three", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_base", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_base", type_hint=File()), doc=OutputDocumentation(doc="[REQUIRED]\nThe output base name for the alignment file(s)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Snv_Alignment_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

