from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Genome_Complexity_Fast_V0_1_0 = CommandToolBuilder(tool="genome_complexity_fast", base_command=["genome-complexity-fast"], inputs=[ToolInput(tag="in_fasta_file_evaluate", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="fasta file to evaluate")), ToolInput(tag="in_length_consider_default", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="Length of mers to consider (default:30)")), ToolInput(tag="in_just_compress_graph", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Just compress graph, dont apply other simplifications")), ToolInput(tag="in_comprss_first_node", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Dont comprss the very first or last node in the graph")), ToolInput(tag="in_interpret_genome_circular", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Interpret genome as circular")), ToolInput(tag="in_display_start_positions", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Display the start positions and length of each sequence")), ToolInput(tag="in_display_sequences_node", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display the sequences for edge node")), ToolInput(tag="in_only_show_first", input_type=Int(optional=True), prefix="-D", doc=InputDocumentation(doc="Only show first and last 4 bp for sequences longer than <len>")), ToolInput(tag="in_just_compute_graph", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Just Compute graph statistics")), ToolInput(tag="in_genome_complexity", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genome_Complexity_Fast_V0_1_0().translate("wdl", allow_empty_container=True)

