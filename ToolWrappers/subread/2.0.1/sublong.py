from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Sublong_V0_1_0 = CommandToolBuilder(tool="sublong", base_command=["sublong"], inputs=[ToolInput(tag="in_base_name_index", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Base name of the index. The index must be built as a full index\nand has only one block.")), ToolInput(tag="in_name_input_read", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="Name of an input read file. Acceptable formats include gzipped\nFASTQ and FASTQ (automatically identified).")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of an output file in BAM format.")), ToolInput(tag="in_sam_output", input_type=Boolean(optional=True), prefix="--SAMoutput", doc=InputDocumentation(doc="Save mapping results in SAM format.")), ToolInput(tag="in_number_cpu_threads", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="Number of CPU threads used. 1 by default.")), ToolInput(tag="in_output_version_program", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Output version of the program.")), ToolInput(tag="in_turn_rnaseq_mode", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="Turn on the RNA-seq mode."))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of an output file in BAM format."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sublong_V0_1_0().translate("wdl", allow_empty_container=True)

