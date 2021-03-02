from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Boolean

Datafunk_Merge_Fasta_V0_1_0 = CommandToolBuilder(tool="datafunk_merge_fasta", base_command=["datafunk", "merge_fasta"], inputs=[ToolInput(tag="in_folder", input_type=Directory(optional=True), prefix="--folder", doc=InputDocumentation(doc="Folder containing all fasta files needed to be merged")), ToolInput(tag="in_input_metadata", input_type=String(optional=True), prefix="--input-metadata", doc=InputDocumentation(doc="Input metadata (csv) for validating sequence\ninformation")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Output for merged fasta file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Run with high verbosity (debug level logging)"))], outputs=[ToolOutput(tag="out_output_fast_a", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fast_a", type_hint=File()), doc=OutputDocumentation(doc="Output for merged fasta file"))], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Merge_Fasta_V0_1_0().translate("wdl")

