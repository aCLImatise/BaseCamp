from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Mapping_V0_1_0 = CommandToolBuilder(tool="mapping", base_command=["mapping"], inputs=[ToolInput(tag="in_number_take_default", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="number of bases to take an alignment (default 20)")), ToolInput(tag="in_fm_nine", input_type=Int(optional=True), prefix="-fm9", doc=InputDocumentation(doc="fm9 file")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="-fastq", doc=InputDocumentation(doc="file is in a fastq format")), ToolInput(tag="in_list_two_exclude", input_type=File(optional=True), prefix="-list2Exclude", doc=InputDocumentation(doc="with sequeces to exclude of the Aligment")), ToolInput(tag="in_multi_fast_a", input_type=Boolean(optional=True), prefix="-multiFasta", doc=InputDocumentation(doc="FILE  with all the reads")), ToolInput(tag="in_nt", input_type=Int(optional=True), prefix="-nt", doc=InputDocumentation(doc="of threads to use (default 1)")), ToolInput(tag="in_offset_fm_nine", input_type=Int(optional=True), prefix="-offsetFM9", doc=InputDocumentation(doc="use several FM9 indexes (default 0)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="for the output-file  if print option was selected (default output)")), ToolInput(tag="in_print", input_type=File(optional=True), prefix="-print", doc=InputDocumentation(doc="the result file (default false)")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="-size", doc=InputDocumentation(doc="for the block aligment (default all dataset)")), ToolInput(tag="in_total_reads", input_type=Int(optional=True), prefix="-totalReads", doc=InputDocumentation(doc="of reads to exclude from list2Exclude")), ToolInput(tag="in_offset_start_alignemnt", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="offset to start the alignemnt (default 0)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="for the output-file  if print option was selected (default output)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapping_V0_1_0().translate("wdl", allow_empty_container=True)

