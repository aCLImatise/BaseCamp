from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bam_Stats_Pl_V0_1_0 = CommandToolBuilder(tool="bam_stats.pl", base_command=["bam_stats.pl"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="-input", doc=InputDocumentation(doc="File path to read in.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="File path to output. Defaults to STDOUT.")), ToolInput(tag="in_plots", input_type=Boolean(optional=True), prefix="-plots", doc=InputDocumentation(doc="Folder to contain quality score plots.\n- not available with '-t'")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="-threads", doc=InputDocumentation(doc="Use multiple threads to process the input\n- warning the complete file is read for each thread.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="-man", doc=InputDocumentation(doc="Full documentation.")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="Prints the version number.")), ToolInput(tag="in_file_dot_dot_dot", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="File path to output. Defaults to STDOUT."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Stats_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

