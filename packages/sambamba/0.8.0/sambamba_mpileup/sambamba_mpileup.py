from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String

Sambamba_Mpileup_V0_1_0 = CommandToolBuilder(tool="sambamba_mpileup", base_command=["sambamba", "mpileup"], inputs=[ToolInput(tag="in_regions", input_type=File(optional=True), prefix="--regions", doc=InputDocumentation(doc="provide BED file with regions\n(no need to duplicate it in samtools args);\nall input files must be indexed")), ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="--output-filename", doc=InputDocumentation(doc="specify output filename")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="directory for temporary files")), ToolInput(tag="in_n_threads", input_type=Int(optional=True), prefix="--nthreads", doc=InputDocumentation(doc="maximum number of threads to use")), ToolInput(tag="in_buffer_size", input_type=Int(optional=True), prefix="--buffer-size", doc=InputDocumentation(doc="chunk size (in bytes)")), ToolInput(tag="in_output_buffer_size", input_type=Int(optional=True), prefix="--output-buffer-size", doc=InputDocumentation(doc="output buffer size (in bytes)")), ToolInput(tag="in_samba_mba_pile_up", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="specify output filename"))], container="quay.io/biocontainers/sambamba:0.8.0--h984e79f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sambamba_Mpileup_V0_1_0().translate("wdl")

