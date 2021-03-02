from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Vcf2Eigenstrat_V0_1_0 = CommandToolBuilder(tool="vcf2eigenstrat", base_command=["vcf2eigenstrat"], inputs=[ToolInput(tag="in_snp_file", input_type=File(optional=True), prefix="--snpFile", doc=InputDocumentation(doc="specify an Eigenstrat SNP file with the positions and\nalleles of a reference set. If this option is given,\nonly positions that are both in the SNP file and in\nthe VCF will be output. Without this option, all\nsites in the VCF will be output. WARNING: Sites that\nare not in the VCF will not be output, and this is\nnew behaviour. Previously one could specify that they\nwill be output as missing or hom-ref, but that\nfeature was recently removed. I plan to implement\nthis behaviour in the future in a new\neigenstrat-merging tool.")), ToolInput(tag="in_out_prefix", input_type=File(optional=True), prefix="--outPrefix", doc=InputDocumentation(doc="specify the filenames for the EigenStrat SNP and IND\nfile outputs: <FILE_PREFIX>.snp.txt and\n<FILE_PREFIX>.ind.txt\n"))], outputs=[ToolOutput(tag="out_snp_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_snp_file", type_hint=File()), doc=OutputDocumentation(doc="specify an Eigenstrat SNP file with the positions and\nalleles of a reference set. If this option is given,\nonly positions that are both in the SNP file and in\nthe VCF will be output. Without this option, all\nsites in the VCF will be output. WARNING: Sites that\nare not in the VCF will not be output, and this is\nnew behaviour. Previously one could specify that they\nwill be output as missing or hom-ref, but that\nfeature was recently removed. I plan to implement\nthis behaviour in the future in a new\neigenstrat-merging tool."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Eigenstrat_V0_1_0().translate("wdl", allow_empty_container=True)

