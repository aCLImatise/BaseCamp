from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Isaac_Reorder_Reference_V0_1_0 = CommandToolBuilder(tool="isaac_reorder_reference", base_command=["isaac-reorder-reference"], inputs=[ToolInput(tag="in_help_defaults", input_type=Boolean(optional=True), prefix="--help-defaults", doc=InputDocumentation(doc="produce tab-delimited list of command line\noptions and their default values")), ToolInput(tag="in_help_md", input_type=Boolean(optional=True), prefix="--help-md", doc=InputDocumentation(doc="produce help message pre-formatted as a\nmarkdown file section and exit")), ToolInput(tag="in_order", input_type=File(optional=True), prefix="--order", doc=InputDocumentation(doc="Comma-separated list of contig names in the\norder in which they will appear in the new .fa\nfile.")), ToolInput(tag="in_arg_path_reordered", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --output-directory ] arg Path for the reordered fasta and annotation")), ToolInput(tag="in_arg_full_path", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference-genome ] arg Full path to the reference genome XML")), ToolInput(tag="in_print_program_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --version ]              print program version information")), ToolInput(tag="in_files_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-x [ --output-xml ] arg       Path for the new xml file.")), ToolInput(tag="in_descriptor_dot", input_type=String(), position=1, doc=InputDocumentation(doc="--response-file arg           file with more command line arguments"))], outputs=[ToolOutput(tag="out_arg_path_reordered", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_path_reordered", type_hint=File()), doc=OutputDocumentation(doc="[ --output-directory ] arg Path for the reordered fasta and annotation"))], container="quay.io/biocontainers/isaac4:04.18.11.09--h07bff40_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isaac_Reorder_Reference_V0_1_0().translate("wdl")

