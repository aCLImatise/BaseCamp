from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Kounta_V0_1_0 = CommandToolBuilder(tool="kounta", base_command=["kounta"], inputs=[ToolInput(tag="in_fof_n", input_type=Boolean(optional=True), prefix="--fofn", doc=InputDocumentation(doc="file     File of filenames to process")), ToolInput(tag="in_km_er", input_type=Boolean(optional=True), prefix="--kmer", doc=InputDocumentation(doc="int      k-mer length [25]")), ToolInput(tag="in_min_freq", input_type=Boolean(optional=True), prefix="--minfreq", doc=InputDocumentation(doc="int      Min k-mer frequency (FASTQ only) [3]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="file     Output matrix file")), ToolInput(tag="in_ram", input_type=Boolean(optional=True), prefix="--ram", doc=InputDocumentation(doc="int      RAM in gigabytes to use [4]")), ToolInput(tag="in_tempdir", input_type=Boolean(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="string   Fast working directory [auto]")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="int      Threads to use [1]"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="file     Output matrix file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kounta_V0_1_0().translate("wdl", allow_empty_container=True)

