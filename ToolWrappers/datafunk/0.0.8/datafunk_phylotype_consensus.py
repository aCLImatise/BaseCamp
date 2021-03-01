from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Boolean

Datafunk_Phylotype_Consensus_V0_1_0 = CommandToolBuilder(tool="datafunk_phylotype_consensus", base_command=["datafunk", "phylotype_consensus"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Fasta file for splitting into phylotypes")), ToolInput(tag="in_input_metadata", input_type=String(optional=True), prefix="--input-metadata", doc=InputDocumentation(doc="Input metadata (csv) with phylotype information")), ToolInput(tag="in_clade_file", input_type=File(optional=True), prefix="--clade-file", doc=InputDocumentation(doc="Clade file stating the phylotypes needed to be grouped")), ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--output-folder", doc=InputDocumentation(doc="Output folder for the phylotype fasta files and\nconsensus file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Run with high verbosity (debug level logging)"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Output folder for the phylotype fasta files and\nconsensus file"))], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Phylotype_Consensus_V0_1_0().translate("wdl")

