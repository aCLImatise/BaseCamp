from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Phyluce_Assembly_Extract_Contigs_To_Barcodes_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_extract_contigs_to_barcodes", base_command=["phyluce_assembly_extract_contigs_to_barcodes"], inputs=[ToolInput(tag="in_contigs", input_type=Directory(optional=True), prefix="--contigs", doc=InputDocumentation(doc="The directory containing the assembled contigs.")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="A config file containing the contigs to extract.")), ToolInput(tag="in_output_fasta_file", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output FASTA file to create")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_var_5", input_type=String(), position=0, doc=InputDocumentation(doc="[--verbosity {INFO,WARN,CRITICAL}]"))], outputs=[ToolOutput(tag="out_output_fasta_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fasta_file", type_hint=File()), doc=OutputDocumentation(doc="The output FASTA file to create"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Extract_Contigs_To_Barcodes_V0_1_0().translate("wdl", allow_empty_container=True)

