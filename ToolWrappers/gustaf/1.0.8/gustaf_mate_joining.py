from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gustaf_Mate_Joining_V0_1_0 = CommandToolBuilder(tool="gustaf_mate_joining", base_command=["gustaf_mate_joining"], inputs=[ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="Turn this option off to disable version update notifications of the\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1.")), ToolInput(tag="in_out_path", input_type=File(optional=True), prefix="--outPath", doc=InputDocumentation(doc="of OUTPUT_FILE's\nSet name of output FASTA/FASTQ file(s). Valid filetypes are: .fq,\n.fastq, .fasta, and .fa. Default: joined_mates.fa.")), ToolInput(tag="in_rev_compl", input_type=Boolean(optional=True), prefix="--revcompl", doc=InputDocumentation(doc="Disable reverse complementing second input file.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Set verbosity to a minimum.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output.")), ToolInput(tag="in_very_verbose", input_type=Boolean(optional=True), prefix="--very-verbose", doc=InputDocumentation(doc="Enable very verbose output."))], outputs=[ToolOutput(tag="out_out_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_path", type_hint=File()), doc=OutputDocumentation(doc="of OUTPUT_FILE's\nSet name of output FASTA/FASTQ file(s). Valid filetypes are: .fq,\n.fastq, .fasta, and .fa. Default: joined_mates.fa."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gustaf_Mate_Joining_V0_1_0().translate("wdl", allow_empty_container=True)

