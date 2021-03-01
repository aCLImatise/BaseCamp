from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Ipa2_Graph_To_Contig_V0_1_0 = CommandToolBuilder(tool="ipa2_graph_to_contig", base_command=["ipa2_graph_to_contig"], inputs=[ToolInput(tag="in_sg_edges_list_fn", input_type=File(optional=True), prefix="--sg-edges-list-fn", doc=InputDocumentation(doc="Input. File containing string graph edges, produced by\novlp_to_graph.py. (default: ./sg_edges_list)")), ToolInput(tag="in_utg_data_fn", input_type=File(optional=True), prefix="--utg-data-fn", doc=InputDocumentation(doc="Input. File containing unitig data, produced by\novlp_to_graph.py. (default: ./utg_data)")), ToolInput(tag="in_ctg_paths_fn", input_type=File(optional=True), prefix="--ctg-paths-fn", doc=InputDocumentation(doc="Input. File containing contig paths, produced by\novlp_to_graph.py. (default: ./ctg_paths)")), ToolInput(tag="in_p_ctg_tiling_path", input_type=String(), position=0, doc=InputDocumentation(doc="a_ctg_all_tiling_path"))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipa2_Graph_To_Contig_V0_1_0().translate("wdl")

