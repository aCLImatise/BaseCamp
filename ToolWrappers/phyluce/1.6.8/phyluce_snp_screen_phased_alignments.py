from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, Int, File

Phyluce_Snp_Screen_Phased_Alignments_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_screen_phased_alignments", base_command=["phyluce_snp_screen_phased_alignments"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing the alignment files")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the output files")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_include_missing", input_type=Boolean(optional=True), prefix="--include-missing", doc=InputDocumentation(doc="Include sites within missing/ambiguous information (-,\n?, N, X)")), ToolInput(tag="in_random", input_type=Boolean(optional=True), prefix="--random", doc=InputDocumentation(doc="Pick one random site from each locus")), ToolInput(tag="in_numerical_encoding", input_type=Boolean(optional=True), prefix="--numerical-encoding", doc=InputDocumentation(doc="Output SNP calls encoded as 0 (ref/ref), 1 (ref/alt),\nor 2 (alt/alt)")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Process alignments in parallel using --cores for\nalignment. This is the number of PHYSICAL CPUs.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs."))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The directory in which to store the output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Screen_Phased_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

