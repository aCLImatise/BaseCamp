from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Sff2Fastq_V0_1_0 = CommandToolBuilder(tool="sff2fastq", base_command=["sff2fastq"], inputs=[ToolInput(tag="in_program_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Program and version information")), ToolInput(tag="in_output_untrimmed_sequence", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Output the untrimmed sequence and quality scores")), ToolInput(tag="in_desired_fastq_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Desired fastq output file. If not specified, defaults to stdout")), ToolInput(tag="in_sff_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_desired_fastq_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_desired_fastq_file", type_hint=File()), doc=OutputDocumentation(doc="Desired fastq output file. If not specified, defaults to stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sff2Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

