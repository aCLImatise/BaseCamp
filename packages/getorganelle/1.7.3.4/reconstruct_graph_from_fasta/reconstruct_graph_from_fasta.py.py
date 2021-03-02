from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Reconstruct_Graph_From_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="reconstruct_graph_from_fasta.py", base_command=["reconstruct_graph_from_fasta.py"], inputs=[ToolInput(tag="in_input_fasta_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input fasta file.")), ToolInput(tag="in_output_graph_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output graph file. The output format is GFA by\ndefault, but FASTG only when indicated with postfix\n'.fastg'.")), ToolInput(tag="in_overlap", input_type=Int(optional=True), prefix="--overlap", doc=InputDocumentation(doc="overlap for reconstructing De Bruijn graph. Default:55")), ToolInput(tag="in_circular", input_type=File(optional=True), prefix="--circular", doc=InputDocumentation(doc="Sequences in input fasta file are all circular\n(yes/no/auto). The auto mode enables detection by\nchecking the existence of '(circular)' in the end of\nthe header of each sequence. Default:auto")), ToolInput(tag="in_single_chain", input_type=Boolean(optional=True), prefix="--single-chain", doc=InputDocumentation(doc="The input sequence(s) was by default treated as DNA\ndouble-chain with its complementary sequence. Choose\nthis flag to turn off.")), ToolInput(tag="in_out_kg", input_type=String(optional=True), prefix="--out-kg", doc=InputDocumentation(doc="Output kmer node graph."))], outputs=[ToolOutput(tag="out_output_graph_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_graph_file", type_hint=File()), doc=OutputDocumentation(doc="Output graph file. The output format is GFA by\ndefault, but FASTG only when indicated with postfix\n'.fastg'."))], container="quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reconstruct_Graph_From_Fasta_Py_V0_1_0().translate("wdl")

