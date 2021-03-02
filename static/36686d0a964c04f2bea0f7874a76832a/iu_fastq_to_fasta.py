from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Iu_Fastq_To_Fasta_V0_1_0 = CommandToolBuilder(tool="iu_fastq_to_fasta", base_command=["iu-fastq-to-fasta"], inputs=[ToolInput(tag="in_number_of_sequences", input_type=Int(optional=True), prefix="--number-of-sequences", doc=InputDocumentation(doc="Number of sequences to be converted")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="FASTA output (default: [-i]-FASTA-[-n]")), ToolInput(tag="in_rev_comp", input_type=Boolean(optional=True), prefix="--rev-comp", doc=InputDocumentation(doc="When set, during the conversion reads will be reverse")), ToolInput(tag="in_u", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="FASTQ file to be converted")), ToolInput(tag="in_complemented_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-u, --uppercase       When set, all nucleotides are converted to uppercase,"))], outputs=[], container="quay.io/biocontainers/illumina-utils:2.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Fastq_To_Fasta_V0_1_0().translate("wdl")

