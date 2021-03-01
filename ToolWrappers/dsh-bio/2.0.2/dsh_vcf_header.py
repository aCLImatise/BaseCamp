from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dsh_Vcf_Header_V0_1_0 = CommandToolBuilder(tool="dsh_vcf_header", base_command=["dsh-vcf-header"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_vcf_file", input_type=Boolean(optional=True), prefix="--input-vcf-file", doc=InputDocumentation(doc="[class java.io.File]  input VCF file, default stdin [optional]")), ToolInput(tag="in_output_vcf_header_file", input_type=File(optional=True), prefix="--output-vcf-header-file", doc=InputDocumentation(doc="[class java.io.File]  output VCF header file, default stdout [optional]")), ToolInput(tag="in_validate", input_type=Boolean(optional=True), prefix="--validate", doc=InputDocumentation(doc="validate VCF header lines [optional]"))], outputs=[ToolOutput(tag="out_output_vcf_header_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_vcf_header_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output VCF header file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Vcf_Header_V0_1_0().translate("wdl")

