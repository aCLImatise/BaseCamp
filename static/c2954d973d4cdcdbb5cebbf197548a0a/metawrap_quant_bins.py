from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int

Metawrap_Quant_Bins_V0_1_0 = CommandToolBuilder(tool="metawrap_quant_bins", base_command=["metawrap", "quant_bins"], inputs=[ToolInput(tag="in_folder_containing_draft", input_type=Directory(optional=True), prefix="-b", doc=InputDocumentation(doc="folder containing draft genomes (bins) in fasta format")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_fasta_file_recommended", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="fasta file with entire metagenomic assembly (strongly recommended!)")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads")), ToolInput(tag="in_reads_x_one_dot_fast_q", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_x_two_dot_fast_q", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metawrap_Quant_Bins_V0_1_0().translate("wdl", allow_empty_container=True)

