from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Aa2Nonred_Pl_V0_1_0 = CommandToolBuilder(tool="aa2nonred.pl", base_command=["aa2nonred.pl"], inputs=[ToolInput(tag="in_max_id", input_type=Int(optional=True), prefix="--maxid", doc=InputDocumentation(doc="maximum percent identity between to sequences\n(#identical aa) / (length of shorter sequence) default: 0.8")), ToolInput(tag="in_blast_path", input_type=File(optional=True), prefix="--BLAST_PATH", doc=InputDocumentation(doc="path to blast (only implemented for NCBI BLAST)")), ToolInput(tag="in_diamond_path", input_type=File(optional=True), prefix="--DIAMOND_PATH", doc=InputDocumentation(doc="path to diamond")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="number of cores to be used by NCBI BLAST or DIAMOND")), ToolInput(tag="in_diamond", input_type=Boolean(optional=True), prefix="--diamond", doc=InputDocumentation(doc="use DIAMOND istead of NCBI BLAST")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="verbosity level for information printed to stdout")), ToolInput(tag="in_input_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aa2Nonred_Pl_V0_1_0().translate("wdl")

