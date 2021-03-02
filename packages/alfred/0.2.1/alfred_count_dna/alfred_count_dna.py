from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Alfred_Count_Dna_V0_1_0 = CommandToolBuilder(tool="alfred_count_dna", base_command=["alfred", "count_dna"], inputs=[ToolInput(tag="in_arg_min_mapping", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --map-qual ] arg (=10)          min. mapping quality")), ToolInput(tag="in_arg_coverage_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (='cov.gz')     coverage output file")), ToolInput(tag="in_arg_count_illumina", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --fragments ] arg               count illumina PE fragments using lower\nand upper bound on insert size, i.e. -f\n0,10000")), ToolInput(tag="in_arg_window_size", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --window-size ] arg (=10000)    window size")), ToolInput(tag="in_arg_window_offset", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[ --window-offset ] arg (=10000)  window offset")), ToolInput(tag="in_arg_windows_chr", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --window-num ] arg (=0)         #windows per chr, used if #n>0")), ToolInput(tag="in_arg_interval_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --interval-file ] arg           interval file, used if present")), ToolInput(tag="in_aligned_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_coverage_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_coverage_output", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (='cov.gz')     coverage output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alfred_Count_Dna_V0_1_0().translate("wdl", allow_empty_container=True)

