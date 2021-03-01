from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Alfred_Split_V0_1_0 = CommandToolBuilder(tool="alfred_split", base_command=["alfred", "split"], inputs=[ToolInput(tag="in_arg_min_mapping", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --map-qual ] arg (=10)     min. mapping quality")), ToolInput(tag="in_arg_reference_fasta", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg          reference fasta file")), ToolInput(tag="in_p", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --hap1 ] arg (='h1.bam')   haplotype1 output file")), ToolInput(tag="in_q", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc="[ --hap2 ] arg (='h2.bam')   haplotype2 output file")), ToolInput(tag="in_arg_na_sample", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --sample ] arg (=NA12878)  sample name (as in BCF)")), ToolInput(tag="in_arg_input_phased", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --vcffile ] arg            input phased VCF/BCF file")), ToolInput(tag="in_assign_unphased_reads", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="[ --assign ]                 assign unphased reads randomly")), ToolInput(tag="in_single_haplotypetagged_bam", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --interleaved ]            single haplotype-tagged BAM")), ToolInput(tag="in_un_phased_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_p", output_type=File(optional=True), selector=InputSelector(input_to_select="in_p", type_hint=File()), doc=OutputDocumentation(doc="[ --hap1 ] arg (='h1.bam')   haplotype1 output file")), ToolOutput(tag="out_q", output_type=File(optional=True), selector=InputSelector(input_to_select="in_q", type_hint=File()), doc=OutputDocumentation(doc="[ --hap2 ] arg (='h2.bam')   haplotype2 output file"))], container="quay.io/biocontainers/alfred:0.2.3--hf3ca161_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alfred_Split_V0_1_0().translate("wdl")

