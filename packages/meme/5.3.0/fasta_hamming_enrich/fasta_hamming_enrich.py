from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Fasta_Hamming_Enrich_V0_1_0 = CommandToolBuilder(tool="fasta_hamming_enrich", base_command=["fasta-hamming-enrich"], inputs=[ToolInput(tag="in_word_required", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="word (required)")), ToolInput(tag="in_positive_sequences_fasta", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="positive sequences FASTA file name (required)")), ToolInput(tag="in_negative_sequences_fasta", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="negative sequences FASTA file name (required)")), ToolInput(tag="in_alphabet_definition_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="alphabet definition file")), ToolInput(tag="in_refine_consensus_branching", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="refine consensus by branching search\n(distance 1 steps; beam size = 1)."))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Hamming_Enrich_V0_1_0().translate("wdl")

