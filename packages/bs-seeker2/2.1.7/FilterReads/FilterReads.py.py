from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Filterreads_Py_V0_1_0 = CommandToolBuilder(tool="FilterReads.py", base_command=["FilterReads.py"], inputs=[ToolInput(tag="in_name_input_qseqfastqfastasequence", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Name of the input qseq/fastq/fasta/sequence file")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output file")), ToolInput(tag="in_filter_quality_reads", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Would not filter low quality reads if specified, only applied\nfor qseq format\n"))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterreads_Py_V0_1_0().translate("wdl", allow_empty_container=True)

