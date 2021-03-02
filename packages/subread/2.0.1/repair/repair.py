from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Repair_V0_1_0 = CommandToolBuilder(tool="repair", base_command=["repair"], inputs=[ToolInput(tag="in_name_input_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Name of input file. BAM format by default.")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file. The output file is in BAM format.")), ToolInput(tag="in_input_file_sam", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="The input file is in SAM format.")), ToolInput(tag="in_compress_bam_file", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Compress the output BAM file. This will reduce the size of BAM\nfile, but will increase the time of retrieving reads from BAM\nfile.")), ToolInput(tag="in_number_cpu_threads", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="Number of CPU threads. 8 by default.")), ToolInput(tag="in_add_dummy_reads", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Do not add dummy reads for singleton reads.")), ToolInput(tag="in_include_sequences_scores", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Do not include sequences and quality scores of reads in the\noutput file.\n"))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of output file. The output file is in BAM format.")), ToolOutput(tag="out_include_sequences_scores", output_type=File(optional=True), selector=InputSelector(input_to_select="in_include_sequences_scores", type_hint=File()), doc=OutputDocumentation(doc="Do not include sequences and quality scores of reads in the\noutput file.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Repair_V0_1_0().translate("wdl", allow_empty_container=True)

