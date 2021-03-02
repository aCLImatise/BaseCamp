from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Randomize_Fastq_V0_1_0 = CommandToolBuilder(tool="randomize_fastq", base_command=["randomize_fastq"], inputs=[ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="overwrite existing output file(s)")), ToolInput(tag="in_buffer_size", input_type=Int(optional=True), prefix="--buffersize", doc=InputDocumentation(doc="size of output buffer in bytes [128 MB]. Not used if\nwriting gzipped files.\n")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="input and output files; give 1, 2 or 4 filenames:\nGiven 'in.fq', read from it and write to stdout. Given\n'in.fq out.fq', read from in.fq and write to out.fq.\nGiven 'in1.fq in2.fq out1.fq out2.fq', work on read\npairs and be careful with file order (both input files\nfirst!)If the output file name ends with '.gz' a\ngizzepd file is written."))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="overwrite existing output file(s)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Randomize_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

