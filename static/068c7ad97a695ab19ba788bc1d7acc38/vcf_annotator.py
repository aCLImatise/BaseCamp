from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Vcf_Annotator_V0_1_0 = CommandToolBuilder(tool="vcf_annotator", base_command=["vcf-annotator"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="File to write VCF output to (Default STDOUT).")), ToolInput(tag="in_vcf_file", input_type=String(), position=0, doc=InputDocumentation(doc="VCF file of variants")), ToolInput(tag="in_genbank_file", input_type=String(), position=1, doc=InputDocumentation(doc="GenBank file of the reference genome."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="File to write VCF output to (Default STDOUT)."))], container="quay.io/biocontainers/vcf-annotator:0.6--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_Annotator_V0_1_0().translate("wdl")

