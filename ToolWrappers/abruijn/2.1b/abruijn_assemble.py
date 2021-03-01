from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Abruijn_Assemble_V0_1_0 = CommandToolBuilder(tool="abruijn_assemble", base_command=["abruijn-assemble"], inputs=[ToolInput(tag="in_kmer_size", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer size [default = 15]")), ToolInput(tag="in_minimum_kmer_coverage", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="minimum k-mer coverage [default = auto]")), ToolInput(tag="in_maximum_kmer_coverage", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="maximum k-mer coverage [default = auto]")), ToolInput(tag="in_minimum_overlap_reads", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="minimum overlap between reads [default = 5000]")), ToolInput(tag="in_enable_debug_output", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="enable debug output [default = false]")), ToolInput(tag="in_output_log_file", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="output log to file [default = not set]")), ToolInput(tag="in_storeload_overlaps_tofrom", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="store/load overlaps to/from file [default = not set]")), ToolInput(tag="in_number_parallel_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of parallel threads [default = 1]")), ToolInput(tag="in_out_assembly", input_type=String(), position=0, doc=InputDocumentation(doc="path to output file")), ToolInput(tag="in_coverage", input_type=String(), position=1, doc=InputDocumentation(doc="estimated assembly coverage"))], outputs=[ToolOutput(tag="out_output_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_log_file", type_hint=File()), doc=OutputDocumentation(doc="output log to file [default = not set]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abruijn_Assemble_V0_1_0().translate("wdl", allow_empty_container=True)

