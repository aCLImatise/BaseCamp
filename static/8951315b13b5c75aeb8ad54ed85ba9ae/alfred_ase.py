from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Alfred_Ase_V0_1_0 = CommandToolBuilder(tool="alfred_ase", base_command=["alfred", "ase"], inputs=[ToolInput(tag="in_arg_min_mapping", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --map-qual ] arg (=10)      min. mapping quality")), ToolInput(tag="in_arg_min_base", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --base-qual ] arg (=10)     min. base quality")), ToolInput(tag="in_arg_reference_fasta", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg           reference fasta file")), ToolInput(tag="in_arg_na_sample", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --sample ] arg (=NA12878)   sample name")), ToolInput(tag="in_arg_allelespecific_output", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="[ --ase ] arg (='as.tsv.gz')  allele-specific output file")), ToolInput(tag="in_arg_input_phased", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --vcffile ] arg             input (phased) BCF file")), ToolInput(tag="in_bcf_file_phased", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --phased ]                  BCF file is phased and BAM is haplo-tagged")), ToolInput(tag="in_output_input_snps", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --full ]                    output all het. input SNPs")), ToolInput(tag="in_input_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_allelespecific_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_allelespecific_output", type_hint=File()), doc=OutputDocumentation(doc="[ --ase ] arg (='as.tsv.gz')  allele-specific output file"))], container="quay.io/biocontainers/alfred:0.2.3--hf3ca161_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alfred_Ase_V0_1_0().translate("wdl")

