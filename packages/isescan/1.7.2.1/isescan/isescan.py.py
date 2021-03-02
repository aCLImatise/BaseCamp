from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Isescan_Py_V0_1_0 = CommandToolBuilder(tool="isescan.py", base_command=["isescan.py"], inputs=[ToolInput(tag="in_remove_short_is", input_type=Boolean(optional=True), prefix="--removeShortIS", doc=InputDocumentation(doc="remove incomplete (partial) IS elements which include IS\nelement with length < 400 or single copy IS element\nwithout perfect TIR.")), ToolInput(tag="in_no_frag_genes_can", input_type=Boolean(optional=True), prefix="--no-FragGeneScan", doc=InputDocumentation(doc="use the annotated protein sequences in NCBI GenBank file\n(.gbk which must be in the same folder with genome\nsequence file), instead of the protein sequences\npredicted/translated by FragGeneScan. (Experimental\nfeature!)")), ToolInput(tag="in_n_thread", input_type=Int(optional=True), prefix="--nthread", doc=InputDocumentation(doc="number of CPU cores used for FragGeneScan and hmmer. By\ndefault one will be used.\n")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc="sequence file in fasta format")), ToolInput(tag="in_path_two_proteome", input_type=Int(), position=1, doc=InputDocumentation(doc="directory where proteome (each line corresponds to a\nprotein sequence database translated from a genome) files\nwill be placed")), ToolInput(tag="in_path_two_hmm", input_type=Int(), position=2, doc=InputDocumentation(doc="directory where the results of hmmsearch will be placed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isescan_Py_V0_1_0().translate("wdl", allow_empty_container=True)

