from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, File

Hera_V0_1_0 = CommandToolBuilder(tool="hera", base_command=["hera"], inputs=[ToolInput(tag="in_output_directory_default", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc=":      Output directory (default: ./)")), ToolInput(tag="in_number_threads_default", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=":      Number of threads (default: 1)")), ToolInput(tag="in_compress_level_default", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc=":      Compress level (1 - 9) (default: -1)")), ToolInput(tag="in_number_bootstraps_default", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=":      Number of bootstraps (default: 0)")), ToolInput(tag="in_output_bam_file", input_type=File(optional=True), prefix="-w", doc=InputDocumentation(doc=":      Output bam file 0:true, 1: false (default: 0)")), ToolInput(tag="in_genome_fasta_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=":      Genome fasta file (if not define, genome mapping will be ignore")), ToolInput(tag="in_output_prefix_default", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=":      Output prefix (default: '')"))], outputs=[ToolOutput(tag="out_output_directory_default", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_default", type_hint=File()), doc=OutputDocumentation(doc=":      Output directory (default: ./)")), ToolOutput(tag="out_output_bam_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bam_file", type_hint=File()), doc=OutputDocumentation(doc=":      Output bam file 0:true, 1: false (default: 0)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hera_V0_1_0().translate("wdl", allow_empty_container=True)

