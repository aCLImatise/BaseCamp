from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Makednadatabase_Py_V0_1_0 = CommandToolBuilder(tool="MakeDNADatabase.py", base_command=["MakeDNADatabase.py"], inputs=[ToolInput(tag="in_prime", input_type=Int(optional=True), prefix="--prime", doc=InputDocumentation(doc="Prime (for modding hashes) (default: 9999999999971)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use (default: 8)")), ToolInput(tag="in_num_hashes", input_type=Int(optional=True), prefix="--num_hashes", doc=InputDocumentation(doc="Number of hashes to use. (default: 500)")), ToolInput(tag="in_k_size", input_type=Int(optional=True), prefix="--k_size", doc=InputDocumentation(doc="K-mer size (default: 21)")), ToolInput(tag="in_intersect_node_graph", input_type=Boolean(optional=True), prefix="--intersect_nodegraph", doc=InputDocumentation(doc="Optional flag to export Nodegraph file (bloom filter)\ncontaining all k-mers in the training database. Saved\nin same location as out_file. This is to be used with\nQueryDNADatabase.py (default: False)\n")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input file: file containing (absolute) file names of\ntraining genomes.")), ToolInput(tag="in_out_file", input_type=String(), position=1, doc=InputDocumentation(doc="Output training database/reference file (in HDF5\nformat)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makednadatabase_Py_V0_1_0().translate("wdl", allow_empty_container=True)

