from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dsh_Split_Vcf_V0_1_0 = CommandToolBuilder(tool="dsh_split_vcf", base_command=["dsh-split-vcf"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--input-file", doc=InputDocumentation(doc="[class java.io.File]  input VCF file, default stdin [optional]")), ToolInput(tag="in_bytes", input_type=Boolean(optional=True), prefix="--bytes", doc=InputDocumentation(doc="[class java.lang.String]  split input file at next record after each n bytes [optional]")), ToolInput(tag="in_records", input_type=Boolean(optional=True), prefix="--records", doc=InputDocumentation(doc="[class java.lang.Long]  split input file after each n records [optional]")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="[class java.lang.String]  output file prefix [optional]")), ToolInput(tag="in_left_pad", input_type=Boolean(optional=True), prefix="--left-pad", doc=InputDocumentation(doc="[class java.lang.Integer]  left pad split index in output file name [optional]")), ToolInput(tag="in_suffix", input_type=File(optional=True), prefix="--suffix", doc=InputDocumentation(doc="[class java.lang.String]  output file suffix, e.g. .vcf.bgz [optional]"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="[class java.lang.String]  output file prefix [optional]")), ToolOutput(tag="out_suffix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_suffix", type_hint=File()), doc=OutputDocumentation(doc="[class java.lang.String]  output file suffix, e.g. .vcf.bgz [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Split_Vcf_V0_1_0().translate("wdl")

