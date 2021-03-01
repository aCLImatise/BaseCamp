from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Kmer_Analysis_Pl_V0_1_0 = CommandToolBuilder(tool="kmer_analysis.pl", base_command=["kmer_analysis.pl"], inputs=[ToolInput(tag="in_file_for_processing", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="File for processing")), ToolInput(tag="in_working_directory", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Working directory")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_kmer_length_search", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Kmer length to search")), ToolInput(tag="in_file_type_either", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="File type, can either be fasta or fastq")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmer_Analysis_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

