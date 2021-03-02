from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean

Metawrap_Blobology_V0_1_0 = CommandToolBuilder(tool="metawrap_blobology", base_command=["metawrap", "blobology"], inputs=[ToolInput(tag="in_assembly_fasta_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="assembly fasta file")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads")), ToolInput(tag="in_subs_amble", input_type=Boolean(optional=True), prefix="--subsamble", doc=InputDocumentation(doc="INT     Number of contigs to run blobology on. Subsampling is randomized. (default=ALL)")), ToolInput(tag="in_bins", input_type=Boolean(optional=True), prefix="--bins", doc=InputDocumentation(doc="STR     Folder containing bins. Contig names must match those of the assembly file. (default=None)")), ToolInput(tag="in_reads_a_one_dot_fast_q", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_a_two_dot_fast_q", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_b_two_dot_fast_q", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metawrap_Blobology_V0_1_0().translate("wdl", allow_empty_container=True)

