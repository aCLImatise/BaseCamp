from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Array, Float, Int, File, Boolean

President_V0_1_0 = CommandToolBuilder(tool="president", base_command=["president"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference genome.")), ToolInput(tag="in_query", input_type=Array(t=String(), optional=True), prefix="--query", doc=InputDocumentation(doc="Query genome(s).")), ToolInput(tag="in_id_threshold", input_type=Float(optional=True), prefix="--id_threshold", doc=InputDocumentation(doc="ACGT nucleotide identity threshold after alignment\n(percentage). A query sequence is reported as valid\nbased on this threshold (def: 0.9)")), ToolInput(tag="in_n_threshold", input_type=Float(optional=True), prefix="--n_threshold", doc=InputDocumentation(doc="A query sequence is reported as valid, if the\npercentage of Ns is smaller or equal the threshold\n(def: 0.05)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use for pblat.")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="Path to be used to store results and FASTA files.")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix to be used t store results in the path")), ToolInput(tag="in_store_alignment", input_type=Boolean(optional=True), prefix="--store_alignment", doc=InputDocumentation(doc="add query alignment columns (PSL format)"))], outputs=[], container="quay.io/biocontainers/president:0.6.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    President_V0_1_0().translate("wdl")

