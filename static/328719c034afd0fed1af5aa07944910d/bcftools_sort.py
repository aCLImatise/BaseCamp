from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, File, String

Bcftools_Sort_V0_1_0 = CommandToolBuilder(tool="bcftools_sort", base_command=["bcftools", "sort"], inputs=[ToolInput(tag="in_max_mem", input_type=Float(optional=True), prefix="--max-mem", doc=InputDocumentation(doc="[kMG]    maximum memory to use [768M]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file name [stdout]")), ToolInput(tag="in_output_type", input_type=String(optional=True), prefix="--output-type", doc=InputDocumentation(doc="b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]")), ToolInput(tag="in_temp_dir", input_type=String(optional=True), prefix="--temp-dir", doc=InputDocumentation(doc="temporary files [/tmp/bcftools-sort.XXXXXX]")), ToolInput(tag="in_file_dot_vcf", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file name [stdout]"))], container="quay.io/biocontainers/bcftools:1.12--h3f113a9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcftools_Sort_V0_1_0().translate("wdl")

