from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dsh_Filter_Gff3_V0_1_0 = CommandToolBuilder(tool="dsh_filter_gff3", base_command=["dsh-filter-gff3"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_range", input_type=Boolean(optional=True), prefix="--range", doc=InputDocumentation(doc="[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]")), ToolInput(tag="in_score", input_type=Boolean(optional=True), prefix="--score", doc=InputDocumentation(doc="[class java.lang.Integer]  filter by score [optional]")), ToolInput(tag="in_script", input_type=Boolean(optional=True), prefix="--script", doc=InputDocumentation(doc="[class java.lang.String]  filter by script, eval against r [optional]")), ToolInput(tag="in_input_gff_three_file", input_type=Boolean(optional=True), prefix="--input-gff3-file", doc=InputDocumentation(doc="[class java.io.File]  input GFF3 file, default stdin [optional]")), ToolInput(tag="in_output_gff_three_file", input_type=File(optional=True), prefix="--output-gff3-file", doc=InputDocumentation(doc="[class java.io.File]  output GFF3 file, default stdout [optional]"))], outputs=[ToolOutput(tag="out_output_gff_three_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gff_three_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output GFF3 file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Filter_Gff3_V0_1_0().translate("wdl")

