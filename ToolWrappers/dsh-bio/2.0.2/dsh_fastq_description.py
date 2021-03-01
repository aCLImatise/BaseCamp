from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Fastq_Description_V0_1_0 = CommandToolBuilder(tool="dsh_fastq_description", base_command=["dsh-fastq-description"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_fast_q_file", input_type=Boolean(optional=True), prefix="--fastq-file", doc=InputDocumentation(doc="[class java.io.File]  input FASTQ file, default stdin [optional]")), ToolInput(tag="in_description_file", input_type=File(optional=True), prefix="--description-file", doc=InputDocumentation(doc="[class java.io.File]  output file of description lines, default stdout [optional]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_description_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_description_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output file of description lines, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Fastq_Description_V0_1_0().translate("wdl")

