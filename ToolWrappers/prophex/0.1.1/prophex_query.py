from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Prophex_Query_V0_1_0 = CommandToolBuilder(tool="prophex_query", base_command=["prophex", "query"], inputs=[ToolInput(tag="in_length_of_kmer", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="length of k-mer")), ToolInput(tag="in_use_klcp_querying", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="use k-LCP for querying")), ToolInput(tag="in_output_set_chromosomes", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="output set of chromosomes for every k-mer")), ToolInput(tag="in_check_kmer_border", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="do not check whether k-mer is on border of two contigs, and show such k-mers in output")), ToolInput(tag="in_print_sequences_base", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="print sequences and base qualities")), ToolInput(tag="in_log_file_name", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="log file name to output statistics")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_idx_base", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_log_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file_name", type_hint=File()), doc=OutputDocumentation(doc="log file name to output statistics"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophex_Query_V0_1_0().translate("wdl", allow_empty_container=True)

