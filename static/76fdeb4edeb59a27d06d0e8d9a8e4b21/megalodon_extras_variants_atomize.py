from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Megalodon_Extras_Variants_Atomize_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_variants_atomize", base_command=["megalodon_extras", "variants", "atomize"], inputs=[ToolInput(tag="in_out_vcf", input_type=File(optional=True), prefix="--out-vcf", doc=InputDocumentation(doc="Output VCF file. Default:")), ToolInput(tag="in_in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="Proposed varitants (VCF)")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc="Reference FASTA or minimap2 index file corresponding\nto VCF.")), ToolInput(tag="in_atomized_variants_dot_megalodon_dot_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="--max-indel-size MAX_INDEL_SIZE"))], outputs=[ToolOutput(tag="out_out_vcf", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_vcf", type_hint=File()), doc=OutputDocumentation(doc="Output VCF file. Default:"))], container="quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Variants_Atomize_V0_1_0().translate("wdl")

