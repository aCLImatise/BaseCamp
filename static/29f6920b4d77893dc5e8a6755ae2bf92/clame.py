from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Clame_V0_1_0 = CommandToolBuilder(tool="clame", base_command=["clame"], inputs=[ToolInput(tag="in_number_take_default", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="number of bases to take an alignment (default 70)")), ToolInput(tag="in_fm_nine", input_type=Int(optional=True), prefix="-fm9", doc=InputDocumentation(doc="fm9 file")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="-fastq", doc=InputDocumentation(doc="file is in a fastq format")), ToolInput(tag="in_cut_points_comma", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="of cut points (comma separator) for edges constrains (default 0,10000)")), ToolInput(tag="in_multi_fast_a", input_type=Boolean(optional=True), prefix="-multiFasta", doc=InputDocumentation(doc="FILE  with all the reads")), ToolInput(tag="in_nt", input_type=Int(optional=True), prefix="-nt", doc=InputDocumentation(doc="of threads to use (default 1)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="for the output-file  if print option was selected (default output)")), ToolInput(tag="in_print", input_type=File(optional=True), prefix="-print", doc=InputDocumentation(doc="print output to file (default false)")), ToolInput(tag="in_size_bin", input_type=Int(optional=True), prefix="-sizeBin", doc=InputDocumentation(doc="number of reads to report a bin (default 1000)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="for the output-file  if print option was selected (default output)")), ToolOutput(tag="out_print", output_type=File(optional=True), selector=InputSelector(input_to_select="in_print", type_hint=File()), doc=OutputDocumentation(doc="print output to file (default false)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clame_V0_1_0().translate("wdl", allow_empty_container=True)

