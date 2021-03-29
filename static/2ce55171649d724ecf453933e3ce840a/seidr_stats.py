from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Seidr_Stats_V0_1_0 = CommandToolBuilder(tool="seidr_stats", base_command=["seidr", "stats"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="Input SeidrFile [can be positional]")), ToolInput(tag="in_arg_index_use", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --index ] arg (=last score)      Index of score to use")), ToolInput(tag="in_arg_use_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --nsamples ] arg (=0)            Use N samples for approximations")), ToolInput(tag="in_arg_prclobtwstrevktzlpcsecebcstring_describing", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --metrics ] arg (=PR,CLO,BTW,STR,EV,KTZ,LPC,SEC,EBC)\nString describing metrics to calculate")), ToolInput(tag="in_experimental_use_directionality", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --directed ]                     (Experimental) Use directionality")), ToolInput(tag="in_weight_is_distance", input_type=Boolean(optional=True), prefix="--weight-is-distance", doc=InputDocumentation(doc="Edge weight represents a distance\n(rather than similarity).")), ToolInput(tag="in_weight_rank", input_type=Boolean(optional=True), prefix="--weight-rank", doc=InputDocumentation(doc="Set weight value to rank rather than")), ToolInput(tag="in_arg_auto_directory", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="[ --tempdir ] arg (=auto)          Directory to store temporary data")), ToolInput(tag="in_information_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--eigenvector-tol arg (=1e-08)        Eigenvector centrality convergence ")), ToolInput(tag="in_tolerance", input_type=String(), position=1, doc=InputDocumentation(doc="-e [ --exact ]                        Calculate exact stats.")), ToolInput(tag="in_score", input_type=String(), position=2, doc=InputDocumentation(doc="Common Options:"))], outputs=[], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seidr_Stats_V0_1_0().translate("wdl")

