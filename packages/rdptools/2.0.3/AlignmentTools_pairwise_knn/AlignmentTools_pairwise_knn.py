from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Alignmenttools_Pairwise_Knn_V0_1_0 = CommandToolBuilder(tool="AlignmentTools_pairwise_knn", base_command=["AlignmentTools", "pairwise-knn"], inputs=[ToolInput(tag="in_knearest_neighbors_return", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="K-nearest neighbors to return. (default = 1)")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Alignment mode {global, glocal, local, overlap,\noverlap_trim} (default= glocal)")), ToolInput(tag="in_remove_ns_default", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Remove Ns from the query. Default is false")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Redirect output to file instead of stdout")), ToolInput(tag="in_prefilter", input_type=Int(optional=True), prefix="--prefilter", doc=InputDocumentation(doc="The top p closest targets from kmer prefilter\nstep. Set p=0 to disable the prefilter step.\n(default = 10)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="#Threads to use. This process is CPU intensive.\n(default 1)")), ToolInput(tag="in_word_size", input_type=Int(optional=True), prefix="--word-size", doc=InputDocumentation(doc="The word size used to find closest targets during\nprefilter. (default 4 for protein, 8 for\nnucleotide)\n")), ToolInput(tag="in_pairwise_knn", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_dbfile", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Redirect output to file instead of stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignmenttools_Pairwise_Knn_V0_1_0().translate("wdl", allow_empty_container=True)

