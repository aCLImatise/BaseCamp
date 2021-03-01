from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String, Int

Makenodegraph_Py_V0_1_0 = CommandToolBuilder(tool="MakeNodeGraph.py", base_command=["MakeNodeGraph.py"], inputs=[ToolInput(tag="in_fp_rate", input_type=Float(optional=True), prefix="--fp_rate", doc=InputDocumentation(doc="False positive rate. (default: 0.0001)")), ToolInput(tag="in_intersect_node_graph", input_type=String(optional=True), prefix="--intersect_nodegraph", doc=InputDocumentation(doc="Location of Node Graph. Will only insert query k-mers\nin bloom filter if they appear anywhere in the\ntraining database. Note that the Jaccard estimates\nwill now be J(query intersect union_i training_i,\ntraining_i) instead of J(query, training_i), but will\nuse significantly less space (unfortunately will also\ndisable threading). (default: None)")), ToolInput(tag="in_k_size", input_type=Int(optional=True), prefix="--k_size", doc=InputDocumentation(doc="K-mer size (default: 21)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use (default: 8)\n")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input file: FASTQ/A file (can be gzipped).")), ToolInput(tag="in_out_dir", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makenodegraph_Py_V0_1_0().translate("wdl", allow_empty_container=True)

