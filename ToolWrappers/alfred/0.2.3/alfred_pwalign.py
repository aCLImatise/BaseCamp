from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Alfred_Pwalign_V0_1_0 = CommandToolBuilder(tool="alfred_pwalign", base_command=["alfred", "pwalign"], inputs=[ToolInput(tag="in_arg_gap_open", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[ --gapopen ] arg (=-10)           gap open")), ToolInput(tag="in_arg_gap_extension", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[ --gapext ] arg (=-1)             gap extension")), ToolInput(tag="in__arg_match", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --match ] arg (=5)               match")), ToolInput(tag="in__arg_mismatch", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --mismatch ] arg (=-4)           mismatch")), ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --endsfree1 ]                    leading/trailing gaps free for seq1")), ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="[ --endsfree2 ]                    leading/trailing gaps free for seq2")), ToolInput(tag="in__local_alignment", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --local ]                        local alignment")), ToolInput(tag="in_allow_ambiguity_codes", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="[ --ambiguous ]                    allow IUPAC ambiguity codes")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --format ] arg (=h)              output format [v|h]")), ToolInput(tag="in_arg_verticalhorizontal_alignment", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="[ --alignment ] arg (='al.fa.gz')  vertical/horizontal alignment")), ToolInput(tag="in_seq_one_dot_fast_a", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_two_dot_fast_a", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/alfred:0.2.3--hf3ca161_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alfred_Pwalign_V0_1_0().translate("wdl")

