from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Vcfprimers_V0_1_0 = CommandToolBuilder(tool="vcfprimers", base_command=["vcfprimers"], inputs=[ToolInput(tag="in_fast_a_reference", input_type=Boolean(optional=True), prefix="--fasta-reference", doc=InputDocumentation(doc="FASTA reference file to use to obtain primer sequences")), ToolInput(tag="in_primer_length", input_type=Boolean(optional=True), prefix="--primer-length", doc=InputDocumentation(doc="The length of the primer sequences on each side of the variant")), ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfprimers_V0_1_0().translate("wdl", allow_empty_container=True)

