from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Capcpileup2Binned_V0_1_0 = CommandToolBuilder(tool="capCpileup2binned", base_command=["capCpileup2binned"], inputs=[ToolInput(tag="in_pileupfile_input_pileup", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="pileupfile  is the input pile-up file name")), ToolInput(tag="in_outfile_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="outfile     is the file name for the output bedGraph")), ToolInput(tag="in_chromsizes_file_name", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="chromsizes  is the file name for the list of chromosome sizes")), ToolInput(tag="in_target_name_target", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="target      is the name of the target")), ToolInput(tag="in_bin_wind_pileup", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="bin wind    pile-up will be up into sliding window bins with step\nsize of 'bin' and window width of 'wind'")), ToolInput(tag="in_totalreads_pileup_normalized", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="totalreads  pile-up will be normalized to reads per million\ngenome wide; requires total number of reads (available\nfrom capC main process report file; includes both inter\nand intra chromosomal).\n"))], outputs=[ToolOutput(tag="out_outfile_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile_file_name", type_hint=File()), doc=OutputDocumentation(doc="outfile     is the file name for the output bedGraph"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Capcpileup2Binned_V0_1_0().translate("wdl", allow_empty_container=True)

