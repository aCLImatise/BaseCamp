from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Pvacseq_Generate_Protein_Fasta_V0_1_0 = CommandToolBuilder(tool="pvacseq_generate_protein_fasta", base_command=["pvacseq", "generate_protein_fasta"], inputs=[ToolInput(tag="in_downstream_sequence_length", input_type=Int(optional=True), prefix="--downstream-sequence-length", doc=InputDocumentation(doc="Cap to limit the downstream sequence length for\nframeshifts when creating the fasta file. Use 'full'\nto include the full downstream sequence. Default: 1000\n")), ToolInput(tag="in_positional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_input_file", input_type=String(), position=1, doc=InputDocumentation(doc="A VEP-annotated single-sample VCF containing\ntranscript, Wildtype protein sequence, and Downstream\nprotein sequence information")), ToolInput(tag="in_peptide_sequence_length", input_type=String(), position=2, doc=InputDocumentation(doc="Length of the peptide sequence to use when creating\nthe FASTA.")), ToolInput(tag="in_output_fasta_file", input_type=String(), position=3, doc=InputDocumentation(doc="The output fasta file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pvacseq_Generate_Protein_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

