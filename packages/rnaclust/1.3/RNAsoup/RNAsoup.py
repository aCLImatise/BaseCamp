from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Float, Boolean

Rnasoup_V0_1_0 = CommandToolBuilder(tool="RNAsoup", base_command=["RNAsoup"], inputs=[ToolInput(tag="in_tree_newick_format", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Tree in NEWICK format")), ToolInput(tag="in_fasta_file_sequences", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="FASTA file of all sequences in tree")), ToolInput(tag="in_file_containing_mfe", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="File containing the RNAalifold consensus MFE for each subtree < 500 sequences")), ToolInput(tag="in_output_directory_created", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory which is created to store the output")), ToolInput(tag="in_significance_level_k", input_type=Float(optional=True), prefix="-k", doc=InputDocumentation(doc="Significance level k")), ToolInput(tag="in_print_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version information"))], outputs=[ToolOutput(tag="out_output_directory_created", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_created", type_hint=File()), doc=OutputDocumentation(doc="Output directory which is created to store the output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnasoup_V0_1_0().translate("wdl", allow_empty_container=True)

