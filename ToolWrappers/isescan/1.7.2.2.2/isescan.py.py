from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Isescan_Py_V0_1_0 = CommandToolBuilder(tool="isescan.py", base_command=["isescan.py"], inputs=[ToolInput(tag="in_seq_file", input_type=File(optional=True), prefix="--seqfile", doc=InputDocumentation(doc="[--nthread NTHREAD]")), ToolInput(tag="in_remove_short_is", input_type=Boolean(optional=True), prefix="--removeShortIS", doc=InputDocumentation(doc="Remove incomplete (partial) IS elements which include IS\nelement with length < 400 or single copy IS element\nwithout perfect TIR.")), ToolInput(tag="in_no_frag_genes_can", input_type=Boolean(optional=True), prefix="--no-FragGeneScan", doc=InputDocumentation(doc="Use the annotated protein sequences in NCBI GenBank file\n(.gbk which must be in the same folder with genome\nsequence file), instead of the protein sequences\npredicted/translated by FragGeneScan. (Experimental\nfeature!)")), ToolInput(tag="in_n_thread", input_type=Int(optional=True), prefix="--nthread", doc=InputDocumentation(doc="Number of CPU cores used for FragGeneScan and hmmer, 1 by\ndefault.\n"))], outputs=[], container="quay.io/biocontainers/isescan:1.7.2.2.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isescan_Py_V0_1_0().translate("wdl")

