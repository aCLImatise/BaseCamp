from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cat_Summarise_V0_1_0 = CommandToolBuilder(tool="CAT_summarise", base_command=["CAT", "summarise"], inputs=[ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Path to named CAT contig classification file or BAT\nbin classification file. Currently only official ranks\nare supported, and only classification files\ncontaining a single classification per contig / bin.\nIf you want to summarise a contig classification file,\nyou have to supply the contigs fasta file with\nargument [-c / --contigs_fasta].")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Path to output file.")), ToolInput(tag="in_contigs_fast_a", input_type=Boolean(optional=True), prefix="--contigs_fasta", doc=InputDocumentation(doc="Path to contigs fasta file. Required if you want to\nsummarise a contig classification file.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite existing files.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress verbosity."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path to output file."))], container="quay.io/biocontainers/cat:5.2.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cat_Summarise_V0_1_0().translate("wdl")

