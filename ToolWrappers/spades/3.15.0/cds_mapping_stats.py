from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Directory

Cds_Mapping_Stats_V0_1_0 = CommandToolBuilder(tool="cds_mapping_stats", base_command=["cds-mapping-stats"], inputs=[ToolInput(tag="in_kmer_length_use", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length to use")), ToolInput(tag="in_graph", input_type=String(optional=True), prefix="--graph", doc=InputDocumentation(doc="In GFA (ending with .gfa) or prefix to SPAdes graph pack")), ToolInput(tag="in_cds_queries", input_type=File(optional=True), prefix="--cds-queries", doc=InputDocumentation(doc="Path to FASTA file with ground truth CDS sequences")), ToolInput(tag="in_paths", input_type=File(optional=True), prefix="--paths", doc=InputDocumentation(doc="Destination for outputting paths corresponding to CDS sequences")), ToolInput(tag="in_edge_info", input_type=File(optional=True), prefix="--edge-info", doc=InputDocumentation(doc="Destination for outputting edge usage information")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="# of threads to use (default: max_threads / 2)")), ToolInput(tag="in_colors", input_type=File(optional=True), prefix="--colors", doc=InputDocumentation(doc="Destination for outputting edge coloring to be displayed in Bandage")), ToolInput(tag="in_subgraph", input_type=File(optional=True), prefix="--subgraph", doc=InputDocumentation(doc="Destination for outputting locality of covered edges in GFA")), ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="scratch directory to use (default: ./tmp)\n"))], outputs=[], container="quay.io/biocontainers/spades:3.15.0--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cds_Mapping_Stats_V0_1_0().translate("wdl")

