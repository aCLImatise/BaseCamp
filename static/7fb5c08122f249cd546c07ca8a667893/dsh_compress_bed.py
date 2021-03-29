from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Compress_Bed_V0_1_0 = CommandToolBuilder(tool="dsh_compress_bed", base_command=["dsh-compress-bed"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_bed_file", input_type=Boolean(optional=True), prefix="--input-bed-file", doc=InputDocumentation(doc="[class java.io.File]  input BED file, default stdin [optional]")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="--output-bed-file", doc=InputDocumentation(doc="[class java.io.File]  output BED file, default stdout [optional]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output BED file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Compress_Bed_V0_1_0().translate("wdl")

