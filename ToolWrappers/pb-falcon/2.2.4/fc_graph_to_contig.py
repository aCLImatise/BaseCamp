from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fc_Graph_To_Contig_V0_1_0 = CommandToolBuilder(tool="fc_graph_to_contig", base_command=["fc_graph_to_contig"], inputs=[ToolInput(tag="in_improper_p_ctg", input_type=Boolean(optional=True), prefix="--improper-p-ctg", doc=InputDocumentation(doc="Skip the initial read in each p_ctg path. (default:\nFalse)")), ToolInput(tag="in_proper_a_ctg", input_type=Boolean(optional=True), prefix="--proper-a-ctg", doc=InputDocumentation(doc="Skip the initial read in each a_ctg path. (default:\nFalse)")), ToolInput(tag="in_p_reads_fast_a_fn", input_type=File(optional=True), prefix="--preads-fasta-fn", doc=InputDocumentation(doc="Input. Preads file, required to construct the contigs.\n(default: ./preads4falcon.fasta)")), ToolInput(tag="in_sg_edges_list_fn", input_type=File(optional=True), prefix="--sg-edges-list-fn", doc=InputDocumentation(doc="Input. File containing string graph edges, produced by\novlp_to_graph.py. (default: ./sg_edges_list)")), ToolInput(tag="in_utg_data_fn", input_type=File(optional=True), prefix="--utg-data-fn", doc=InputDocumentation(doc="Input. File containing unitig data, produced by\novlp_to_graph.py. (default: ./utg_data)")), ToolInput(tag="in_ctg_paths_fn", input_type=File(optional=True), prefix="--ctg-paths-fn", doc=InputDocumentation(doc="Input. File containing contig paths, produced by\novlp_to_graph.py. (default: ./ctg_paths)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Graph_To_Contig_V0_1_0().translate("wdl", allow_empty_container=True)

