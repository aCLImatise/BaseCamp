from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bioformats_Vcfgeno2Bed_V0_1_0 = CommandToolBuilder(tool="bioformats_vcfgeno2bed", base_command=["bioformats", "vcfgeno2bed"], inputs=[ToolInput(tag="in_individuals", input_type=File(optional=True), prefix="--individuals", doc=InputDocumentation(doc="a file with the list of individuals to be considered\nfor genotype counting\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_file", input_type=String(), position=0, doc=InputDocumentation(doc="a VCF file")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="the output BED3+ file of genotype counts"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Vcfgeno2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

