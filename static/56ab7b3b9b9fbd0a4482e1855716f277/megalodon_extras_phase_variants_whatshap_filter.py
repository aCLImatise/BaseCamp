from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Megalodon_Extras_Phase_Variants_Whatshap_Filter_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_phase_variants_whatshap_filter", base_command=["megalodon_extras", "phase_variants", "whatshap_filter"], inputs=[ToolInput(tag="in_filtered_records", input_type=File(optional=True), prefix="--filtered-records", doc=InputDocumentation(doc="File to output filtered records.\n")), ToolInput(tag="in_in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="Megalodon VCF file")), ToolInput(tag="in_out_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="Output VCF file"))], outputs=[ToolOutput(tag="out_filtered_records", output_type=File(optional=True), selector=InputSelector(input_to_select="in_filtered_records", type_hint=File()), doc=OutputDocumentation(doc="File to output filtered records.\n"))], container="quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Phase_Variants_Whatshap_Filter_V0_1_0().translate("wdl")

