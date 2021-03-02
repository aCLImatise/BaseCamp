from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dsh_Filter_Vcf_V0_1_0 = CommandToolBuilder(tool="dsh_filter_vcf", base_command=["dsh-filter-vcf"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="--id", doc=InputDocumentation(doc="[java.util.List<java.lang.String>]  filter by id, specify as id1,id2,id3 [optional]")), ToolInput(tag="in_range", input_type=Boolean(optional=True), prefix="--range", doc=InputDocumentation(doc="[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]")), ToolInput(tag="in_qual", input_type=Boolean(optional=True), prefix="--qual", doc=InputDocumentation(doc="[class java.lang.Double]  filter by quality score [optional]")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="--filter", doc=InputDocumentation(doc="filter to records that have passed all filters [optional]")), ToolInput(tag="in_script", input_type=Boolean(optional=True), prefix="--script", doc=InputDocumentation(doc="[class java.lang.String]  filter by script, eval against r [optional]")), ToolInput(tag="in_input_vcf_file", input_type=Boolean(optional=True), prefix="--input-vcf-file", doc=InputDocumentation(doc="[class java.io.File]  input VCF file, default stdin [optional]")), ToolInput(tag="in_output_vcf_file", input_type=File(optional=True), prefix="--output-vcf-file", doc=InputDocumentation(doc="[class java.io.File]  output VCF file, default stdout [optional]"))], outputs=[ToolOutput(tag="out_output_vcf_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_vcf_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output VCF file, default stdout [optional]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Filter_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

