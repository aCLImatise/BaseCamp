from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Reseq_Replacen_V0_1_0 = CommandToolBuilder(tool="reseq_replaceN", base_command=["reseq", "replaceN"], inputs=[ToolInput(tag="in_arg_number_threads", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="[ --threads ] arg (=0) Number of threads used (0=auto)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="(=4)      Sets the level of verbosity (4=everything,\n0=nothing)")), ToolInput(tag="in_arg_reference_sequences", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --refIn ] arg        Reference sequences in fasta format (gz and bz2\nsupported)")), ToolInput(tag="in_arg_file_where", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="[ --refSim ] arg       File to where reference sequences in fasta format\nwith N's randomly replace should be written to")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="Seed used for replacing N, if none is given random\nseed will be used\n"))], outputs=[], container="quay.io/biocontainers/reseq:1.1--py38h56fca86_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reseq_Replacen_V0_1_0().translate("wdl")

