from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Runecc_Sh_V0_1_0 = CommandToolBuilder(tool="runECC.sh", base_command=["runECC.sh"], inputs=[ToolInput(tag="in_ins", input_type=Boolean(optional=True), prefix="-inS", doc=InputDocumentation(doc="single read filenames (comma separated fasta/fastq/fastq.gz files).")), ToolInput(tag="in_in_one", input_type=Boolean(optional=True), prefix="-in1", doc=InputDocumentation(doc="forward paired read filename (single fasta/fastq/fastq.gz file).")), ToolInput(tag="in_in_two", input_type=Boolean(optional=True), prefix="-in2", doc=InputDocumentation(doc="reverse paired read filename (single fasta/fastq/fastq.gz file).")), ToolInput(tag="in_inp", input_type=Boolean(optional=True), prefix="-inP", doc=InputDocumentation(doc="interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files).")), ToolInput(tag="in_output_directory_current", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="output directory path.(DEFAULT: current directory)")), ToolInput(tag="in_output_filename_disco", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename prefix.(DEFAULT: disco)")), ToolInput(tag="in_maximum_memory_used", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="maximum memory to be used (DEFAULT: 15 GB).")), ToolInput(tag="in_number_threads_default", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="number of threads (DEFAULT: ).")), ToolInput(tag="in_run_disco_dots_h", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory_current", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_directory_current", type_hint=File()), doc=OutputDocumentation(doc="output directory path.(DEFAULT: current directory)")), ToolOutput(tag="out_output_filename_disco", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename_disco", type_hint=File()), doc=OutputDocumentation(doc="output filename prefix.(DEFAULT: disco)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runecc_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

