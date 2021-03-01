from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Hisatgenotype_Hla_Genotyping_Pgs_Py_V0_1_0 = CommandToolBuilder(tool="hisatgenotype_HLA_genotyping_PGs.py", base_command=["hisatgenotype_HLA_genotyping_PGs.py"], inputs=[ToolInput(tag="in_reference_type", input_type=String(optional=True), prefix="--reference-type", doc=InputDocumentation(doc="Reference type: gene, chromosome, and genome (default:\ngene)")), ToolInput(tag="in_hla_list", input_type=Int(optional=True), prefix="--hla-list", doc=InputDocumentation(doc="A comma-separated list of HLA genes (default:\nA,B,C,DQA1,DQB1,DRB1)")), ToolInput(tag="in_aligner_list", input_type=Int(optional=True), prefix="--aligner-list", doc=InputDocumentation(doc="A comma-separated list of aligners (default:\nhisat2.graph)")), ToolInput(tag="in_genome_list", input_type=Int(optional=True), prefix="--genome-list", doc=InputDocumentation(doc="A comma-separated list of genomes (default: NA12888,NA\n12889,NA12886,NA12881,NA12880,NA12883,NA12882,NA12885,\nNA12884,NA12887,NA12877,NA12878,NA12879,NA12892,NA1289\n3,NA12890,NA12891)")), ToolInput(tag="in_exclude_allele_list", input_type=String(optional=True), prefix="--exclude-allele-list", doc=InputDocumentation(doc="A comma-separated list of allleles to be excluded")), ToolInput(tag="in_num_mismatch", input_type=Int(optional=True), prefix="--num-mismatch", doc=InputDocumentation(doc="Maximum number of mismatches per read alignment to be\nconsidered (default: 0)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="also print some statistics to stderr"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisatgenotype_Hla_Genotyping_Pgs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

