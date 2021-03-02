from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Mimodd_Convert_V0_1_0 = CommandToolBuilder(tool="mimodd_convert", base_command=["mimodd", "convert"], inputs=[ToolInput(tag="in_i_format", input_type=String(optional=True), prefix="--iformat", doc=InputDocumentation(doc="the format of the input file(s) (default: bam)")), ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc="redirect the output to the specified file (default:\nstdout)")), ToolInput(tag="in_o_format", input_type=String(optional=True), prefix="--oformat", doc=InputDocumentation(doc="the output format (default: sam)")), ToolInput(tag="in_header", input_type=File(optional=True), prefix="--header", doc=InputDocumentation(doc="optional SAM file, the header information of which\nshould be used in the output (will overwrite pre-\nexisting header information from the input file); not\nallowed for input in SAM/BAM format")), ToolInput(tag="in_split_on_rgs", input_type=Boolean(optional=True), prefix="--split-on-rgs", doc=InputDocumentation(doc="if the input file has reads from different read\ngroups, write them to separate output files (using\n--ofile OFILE as a file name template); implied for\nconversions to fastq format")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="the number of threads to use (overrides config\nsetting; ignored if not applicable to the conversion)\n")), ToolInput(tag="in_convert", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_ofile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ofile", type_hint=File()), doc=OutputDocumentation(doc="redirect the output to the specified file (default:\nstdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mimodd_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

