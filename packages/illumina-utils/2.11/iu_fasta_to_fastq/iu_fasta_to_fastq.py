from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Iu_Fasta_To_Fastq_V0_1_0 = CommandToolBuilder(tool="iu_fasta_to_fastq", base_command=["iu-fasta-to-fastq"], inputs=[ToolInput(tag="in_number_of_sequences", input_type=Int(optional=True), prefix="--number-of-sequences", doc=InputDocumentation(doc="Number of sequences to be converted (by default the\neverything will be processed)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="FASTQ output file name (default: [-i]-FASTA-[-n]")), ToolInput(tag="in_rev_comp", input_type=Boolean(optional=True), prefix="--rev-comp", doc=InputDocumentation(doc="When set, during the conversion reads will be reverse\ncomplemented.\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA file to be converted"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="FASTQ output file name (default: [-i]-FASTA-[-n]"))], container="quay.io/biocontainers/illumina-utils:2.11--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Fasta_To_Fastq_V0_1_0().translate("wdl")

