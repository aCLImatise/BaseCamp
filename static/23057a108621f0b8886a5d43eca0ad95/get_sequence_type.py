from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Directory, Boolean

Get_Sequence_Type_V0_1_0 = CommandToolBuilder(tool="get_sequence_type", base_command=["get_sequence_type"], inputs=[ToolInput(tag="in_species_mlst_scheme", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Species of MLST scheme (0 or more comma separated)")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Number of threads [1]")), ToolInput(tag="in_output_fasta_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Output a FASTA file of concatenated alleles and unknown sequences")), ToolInput(tag="in_output_phylip_file", input_type=File(optional=True), prefix="-y", doc=InputDocumentation(doc="Output a phylip file of concatenated alleles and unknown sequences")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory [.]")), ToolInput(tag="in_print_available_schemes", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Print out all available MLST schemes and exit")), ToolInput(tag="in_print_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version number and exit"))], outputs=[ToolOutput(tag="out_output_fasta_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fasta_file", type_hint=File()), doc=OutputDocumentation(doc="Output a FASTA file of concatenated alleles and unknown sequences")), ToolOutput(tag="out_output_phylip_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_phylip_file", type_hint=File()), doc=OutputDocumentation(doc="Output a phylip file of concatenated alleles and unknown sequences")), ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory [.]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Sequence_Type_V0_1_0().translate("wdl", allow_empty_container=True)

